import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String _fullName = 'Ad Soyad'; // Başlangıçtaki ad soyad
  String _email = 'mail@example.com'; // Başlangıçtaki mail
  String _phone = '0555 123 45 67'; // Başlangıçtaki telefon numarası
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  void _editProfile() async {
    // Profil düzenleme için bir dialog açıyoruz
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Profili Düzenle'),
          content: Column(
            mainAxisSize: MainAxisSize.min, // İçeriğin boyutunu sınırlıyoruz
            children: [
              TextField(
                controller: _nameController,
                decoration: const InputDecoration(
                  hintText: 'Ad Soyad',
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  hintText: 'E-posta',
                ),
                keyboardType: TextInputType.emailAddress, // E-posta için klavye tipi
              ),
              const SizedBox(height: 10),
              TextField(
                controller: _phoneController,
                decoration: const InputDecoration(
                  hintText: 'Telefon Numarası',
                ),
                keyboardType: TextInputType.phone, // Telefon için klavye tipi
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                // Cancel butonuna basıldığında dialogu kapat
                Navigator.of(context).pop();
              },
              child: const Text('İptal'),
            ),
            TextButton(
              onPressed: () {
                // Kullanıcı adı, mail ve telefon girildiyse güncelle
                setState(() {
                  _fullName = _nameController.text;
                  _email = _emailController.text;
                  _phone = _phoneController.text;
                });
                Navigator.of(context).pop();
              },
              child: const Text('Kaydet'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        color: Colors.black87, // Koyu arka plan rengi
        child: Center( // Sayfa düzenini ortaladık
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Ortalamak için
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 90, // Profil ikonu daha büyük
                  backgroundColor: Colors.blueAccent, // İkon için arka plan
                  child: Icon(
                    Icons.person, // Profil ikonu
                    size: 90, // İkonu büyüttük
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  _fullName, // Burada kullanıcı adı görüntüleniyor
                  style: const TextStyle(
                    fontSize: 32, // Metin boyutunu büyüttük
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Yazı rengini beyaz yapalım
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  _email, // Burada mail adresi görüntüleniyor
                  style: const TextStyle(
                    fontSize: 20, // Yazı boyutunu büyüttük
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  _phone, // Burada telefon numarası görüntüleniyor
                  style: const TextStyle(
                    fontSize: 20, // Yazı boyutunu büyüttük
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: _editProfile, // Profil düzenlemeye tıklayınca
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(250, 60), backgroundColor: Colors.blueAccent, // Buton rengi
                  ),
                  child: const Text(
                    'Profili Düzenle',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
