import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

class HesaplamaAraclari extends StatefulWidget {
  const HesaplamaAraclari({super.key});

  @override
  State<HesaplamaAraclari> createState() => _HesaplamaAraclariState();
}

class _HesaplamaAraclariState extends State<HesaplamaAraclari> {
  final TextEditingController _ucusSuresiController = TextEditingController();
  final TextEditingController _ucusSayisiController = TextEditingController();
  final TextEditingController _yillikTuketimController = TextEditingController();
  final TextEditingController _kwhController = TextEditingController();
  final TextEditingController _tuketimController = TextEditingController();
  String _yakitTuru = 'Benzin';
  String _isinmaTuru = 'Doğalgaz';
  double _totalCO2 = 0.0;

  void _hesapla() {
    // Veri Kontrolleri
    if (_ucusSuresiController.text.isEmpty ||
        _ucusSayisiController.text.isEmpty ||
        _yillikTuketimController.text.isEmpty ||
        _kwhController.text.isEmpty ||
        _tuketimController.text.isEmpty) {
      // Yeni pencere (dialog) ile hata mesajını göster
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              'Hata',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            content: const Text(
              'Lütfen tüm alanları doldurun!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Tamam'),
              ),
            ],
          );
        },
      );
      return;
    }

    // Hava Tüketimi Hesaplaması
    double havaTuketimi = double.tryParse(_ucusSuresiController.text) ?? 0.0;
    double havaSayisi = double.tryParse(_ucusSayisiController.text) ?? 0.0;
    double havaCO2 = havaTuketimi * havaSayisi * 56;

    // Kara Tüketimi Hesaplaması
    double karaTuketim = double.tryParse(_yillikTuketimController.text) ?? 0.0;
    double karaCO2 = 0.0;
    if (_yakitTuru == 'Benzin') {
      karaCO2 = karaTuketim * 2.31;
    } else if (_yakitTuru == 'Dizel') {
      karaCO2 = karaTuketim * 2.68;
    } else if (_yakitTuru == 'LPG') {
      karaCO2 = karaTuketim * 1.75;
    }

    // Elektrik Tüketimi Hesaplaması
    double elektrikTuketim = double.tryParse(_kwhController.text) ?? 0.0;
    double elektrikCO2 = elektrikTuketim * 0.5;

    // Isınma Tüketimi Hesaplaması
    double isinmaTuketim = double.tryParse(_tuketimController.text) ?? 0.0;
    double isinmaCO2 = 0.0;
    if (_isinmaTuru == 'Doğalgaz') {
      isinmaCO2 = isinmaTuketim * 1.9;
    } else if (_isinmaTuru == 'Kömür') {
      isinmaCO2 = isinmaTuketim * 2.8;
    }

    // Toplam CO2 Hesaplaması
    _totalCO2 = havaCO2 + karaCO2 + elektrikCO2 + isinmaCO2;

    // CO2 sonucunu ton cinsine çevir
    double totalCO2Ton = _totalCO2 / 1000;

    // CO2 sonucunu 1000'e bölüp, ağaç borcu hesapla ve yuvarla
    double agacBorcu = totalCO2Ton.ceilToDouble();

    // Sonucu ekranda göster
    setState(() {
    });

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            'Sonuçlar',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey,
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Toplam CO2 Salınımı: ${totalCO2Ton.toStringAsFixed(2)} ton'),
              Text('Ağaç Borcunuz: ${agacBorcu.toStringAsFixed(0)} ağaç'),
              const SizedBox(height: 16),
              const Text(
                '2021 yılında Türkiye kişi başı sera gazı salım oranı: 6.6 ton',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              TextButton(
                onPressed: () {
                  launchURL();
                },
                child: const Text(
                  'Ağaç Ekmek İster Misiniz?',
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Tamam'),
            ),
          ],
        );
      },
    );
  }

  void launchURL() async {
    final url = Uri.parse('https://www.tema.org.tr/anasayfa');
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Link açılamadı: $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hesaplama Araçları'),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Opacity(
              opacity: 0.5,
              child: Image.asset(
                'assets/images/hesaplama_araci/agac.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _SectionCard(
                    title: 'Hava Tüketimi',
                    imagePath: 'assets/images/hesaplama_araci/hava_oval.png',
                    icon: Icons.airplanemode_active,
                    children: [
                      _TextFieldWithLabel(label: 'Uçuş Süresi (Saat)', controller: _ucusSuresiController),
                      const SizedBox(height: 16),
                      _TextFieldWithLabel(label: 'Yıllık Uçuş Sayısı', controller: _ucusSayisiController),
                    ],
                  ),
                  const SizedBox(height: 16),
                  _SectionCard(
                    title: 'Kara Tüketimi',
                    imagePath: 'assets/images/hesaplama_araci/yol_oval.png',
                    icon: Icons.directions_car,
                    children: [
                      _DropdownWithLabel(
                        label: 'Yakıt Türü',
                        items: const ['Benzin', 'Dizel', 'LPG'],
                        selectedValue: _yakitTuru,
                        onChanged: (value) {
                          setState(() {
                            _yakitTuru = value!;
                          });
                        },
                      ),
                      const SizedBox(height: 16),
                      Text('Seçilen Yakıt Türü: $_yakitTuru'),
                      const SizedBox(height: 16),
                      _TextFieldWithLabel(label: 'Yıllık Toplam Tüketim (Litre)', controller: _yillikTuketimController),
                    ],
                  ),
                  const SizedBox(height: 16),
                  _SectionCard(
                    title: 'Elektrik Tüketimi',
                    imagePath: 'assets/images/hesaplama_araci/elektrik_oval.png',
                    icon: Icons.bolt,
                    children: [
                      _TextFieldWithLabel(label: 'Yıllık Tüketim (kWh)', controller: _kwhController),
                    ],
                  ),
                  const SizedBox(height: 16),
                  _SectionCard(
                    title: 'Isınma Tüketimi',
                    imagePath: 'assets/images/hesaplama_araci/ısınma1_oval.png',
                    icon: Icons.home,
                    children: [
                      _DropdownWithLabel(
                        label: 'Yakıt Türü',
                        items: const ['Doğalgaz', 'Kömür'],
                        selectedValue: _isinmaTuru,
                        onChanged: (value) {
                          setState(() {
                            _isinmaTuru = value!;
                          });
                        },
                      ),
                      const SizedBox(height: 16),
                      _TextFieldWithLabel(label: 'Yıllık Toplam Tüketim (m³ veya kg)', controller: _tuketimController),
                    ],
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: _hesapla,
                    child: const Text('Hesapla'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SectionCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final List<Widget> children;
  final IconData icon;

  const _SectionCard({
    required this.title,
    required this.imagePath,
    required this.icon,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      color: Colors.white.withOpacity(0.7),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  imagePath,
                  width: 50,
                  height: 50,
                ),
                const SizedBox(width: 8),
                Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox(width: 8),
                Icon(
                  icon,
                  size: 24,
                  color: Colors.blueGrey,
                ),
              ],
            ),
            const SizedBox(height: 16),
            ...children,
          ],
        ),
      ),
    );
  }
}

class _TextFieldWithLabel extends StatelessWidget {
  final String label;
  final TextEditingController controller;

  const _TextFieldWithLabel({required this.label, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontSize: 16)),
        const SizedBox(height: 8),
        TextField(
          controller: controller,
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.all(12),
          ),
        ),
      ],
    );
  }
}

class _DropdownWithLabel extends StatelessWidget {
  final String label;
  final List<String> items;
  final ValueChanged<String?> onChanged;
  final String selectedValue;

  const _DropdownWithLabel({
    required this.label,
    required this.items,
    required this.onChanged,
    required this.selectedValue,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontSize: 16)),
        const SizedBox(height: 8),
        DropdownButton<String>(
          isExpanded: true,
          value: selectedValue,
          onChanged: onChanged,
          hint: const Text('Seçiniz'),
          items: items.map((item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
        ),
      ],
    );
  }
}
