import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 169, 212, 215),

      // AppBar
      appBar: AppBar(
        title: const Text('Ana Sayfa'),
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.bell),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Bildirim tıklandı!")),
              );
            },
          ),
        ],
      ),

      // Drawer (Yan Menü)
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 200,
              color: Colors.transparent,
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.green,
                      width: 4,
                    ),
                  ),
                  child: const CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/pp123.webp'),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.home),
              title: const Text('Ana Sayfa'),
              onTap: () {
                Navigator.pop(context);
                context.go('/home');
              },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.settings),
              title: const Text('Hesaplama Araçları'),
              onTap: () {
                Navigator.pop(context);
                context.go('/hesaplama_araclari');
              },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.leaf_arrow_circlepath),
              title: const Text('Tasarruf Önerileri'),
              onTap: () {
                Navigator.pop(context);
                context.go('/tasarruf_onerileri');
              },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.settings),
              title: const Text('Ayarlar'),
              onTap: () {
                Navigator.pop(context);
                context.go('/settings');
              },
            ),
          ],
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Dikeyde ortalama
          crossAxisAlignment: CrossAxisAlignment.stretch, // Yatayda genişleme
          children: [
            // Flexible ile kutuların esnek bir şekilde yerleşmesini sağlıyoruz
            Flexible(
              flex: 1, // Eşit genişlikte olmasını sağlamak için flex değerini 1 yapıyoruz
              child: _buildCustomBox(
                context, 
                'Karbon Ayak İzi Nedir?', 
                CupertinoIcons.lightbulb, 
                Colors.teal,
                () => _showBottomSheet(context, 'Karbon Ayak İzi Nedir?', 
                  'Karbon ayak izi, bireylerin, işletmelerin veya ürünlerin doğrudan ve dolaylı yollarla atmosfere saldığı toplam karbon dioksit (CO2) ve diğer sera gazı emisyonlarının ölçümüdür. Bu emisyonlar, fosil yakıtların yanması, ormanların yok edilmesi ve tarımsal faaliyetler gibi çeşitli kaynaklardan kaynaklanabilir. Karbon ayak izi genellikle karbon dioksit eşdeğerleri (CO2e) cinsinden ifade edilir, bu da farklı sera gazlarının iklim üzerindeki etkisinin birleşik bir ölçümüdür.',
                ),
              ),
            ),
            const SizedBox(height: 12),
            Flexible(
              flex: 1,
              child: _buildCustomBox(
                context, 
                'Karbon Ayak İzini Etkileyen Faktörler', 
                CupertinoIcons.lightbulb, 
                Colors.orange,
                () => _showBottomSheet(context, 'Karbon Ayak İzini Etkileyen Faktörler', 
                  'Karbon ayak izi aşağıdaki faktörlerden etkilenir:\n\n'
                  'a) Enerji Tüketimi:\n'
                  'Fosil yakıtla çalışan elektrik üretimi\n'
                  'Evlerde enerji tüketimi (ısınma, aydınlatma, elektrikli cihazlar)\n\n'
                  'b) Ulaşım:\n'
                  'Özel araç kullanımı\n'
                  'Uçak, gemi ve toplu taşıma araçları\n\n'
                  'c) Beslenme Alışkanlıkları:\n'
                  'Et ve süt ürünlerinin tüketimi (özellikle kırmızı et)\n'
                  'Yerel olmayan, uzun mesafeden getirilen gıdalar\n\n'
                  'd) Atık Yönetimi:\n'
                  'Geri dönüşüm yapmamak\n'
                  'Atıkların doğaya saldığı metan gazı\n\n'
                  'e) Üretim ve Tüketim Alışkanlıkları:\n'
                  'Tekstil ve moda tüketimi\n'
                  'Ambalajlı ürün kullanımı',
                ),
              ),
            ),
            const SizedBox(height: 12),
            Flexible(
              flex: 1,
              child: _buildCustomBox(
                context, 
                'Doğal Kaynakların Tükenimi', 
                CupertinoIcons.graph_square, 
                Colors.blueAccent,
                () => _showBottomSheet(context, 'Doğal Kaynakların Tükenimi', 
                  'Karbon ayak izi doğrudan doğal kaynakların tükenimiyle bağlantılıdır:\n\n'
                  'a) Fosil Yakıtların Tüketimi:\n'
                  'Artan enerji ihtiyacı nedeniyle petrol, kömür ve doğal gaz gibi kaynaklar hızla tükenmektedir.\n\n'
                  'b) Ormansızlaşma:\n'
                  'Karbon salınımının artması ormanların yok edilmesine neden olur, bu da ekosistem dengelerini bozar.\n\n'
                  'c) Tatlı Su Kaynaklarının Azalması:\n'
                  'Enerji üretimi ve endüstriyel faaliyetler su kaynaklarının aşırı tüketimine yol açar.\n\n'
                  'd) Biyolojik Çeşitliliğin Azalması:\n'
                  'İklim değişikliği ve ekosistem tahribatı, hayvan ve bitki türlerinin tükenmesine neden olur.',
                ),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Ana Sayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.lightbulb),
            label: 'İpuçları',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: 'Profil',
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            context.go('/home');
          } else if (index == 1) {
            context.go('/ipuclari');
          } else if (index == 2) {
            context.go('/profile');
          }
        },
      ),
    );
  }

  Widget _buildCustomBox(BuildContext context, String title, IconData icon, Color color, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: color.withOpacity(0.7),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  void _showBottomSheet(BuildContext context, String title, String content) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true, // Alt pencerenin boyutunun kontrol edilebilir olması için
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView( // İçeriği kaydırılabilir yapmak için
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  content,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}