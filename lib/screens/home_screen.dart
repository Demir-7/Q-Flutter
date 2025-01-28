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
            icon: const Icon(CupertinoIcons.bell), // Bildirim simgesi
            onPressed: () {
              // Bildirim tıklandığında yapılacak işlem
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
            // Drawer Header
            Container(
              height: 200,
              color: Colors.transparent, // Mavi rengin etkisini kaldırdık
              child: Align(
                alignment: Alignment.center, // Resmi ortalamak için
                child: Container(
                  padding: const EdgeInsets.all(8), // Halkanın genişliği
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.green, // Yeşil halka
                      width: 4, // Halkanın kalınlığı
                    ),
                  ),
                  child: const CircleAvatar(
                    radius: 40, // Profil resmi boyutu
                    backgroundImage: AssetImage('assets/images/pp123.webp'), // Profil resmi
                  ),
                ),
              ),
            ),
            // Menü öğeleri
            ListTile(
              leading: const Icon(CupertinoIcons.home),
              title: const Text('Ana Sayfa'),
              onTap: () {
                Navigator.pop(context);
                context.go('/home');  // Ana sayfaya git
              },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.settings),
              title: const Text('Hesaplama Araçları'),
              onTap: () {
                Navigator.pop(context);
                context.go('/hesaplama_araclari'); // Hesaplama araçları sayfasına git
              },
            ),
            
            ListTile(
              leading: const Icon(CupertinoIcons.leaf_arrow_circlepath),
              title: const Text('Tasarruf Önerileri'),
              onTap: () {
                Navigator.pop(context);
                context.go('/tasarruf_onerileri'); // Tasarruf önerileri sayfasına git
              },
            ),
            ListTile(
              leading: const Icon(CupertinoIcons.settings),
              title: const Text('Ayarlar'),
              onTap: () {
                Navigator.pop(context);
                context.go('/settings'); // Ayarlar sayfasına git
              },
            ),
          ],
        ),
      ),

      // Ana içerik
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16),
              child: const Text('Ana Sayfa İçeriği'),
            ),
          ),
        ],
      ),

      // Alt navigasyon çubuğu
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Etiketlerin her zaman görünmesi için
        selectedItemColor: Colors.blue, // Seçili öğenin rengi
        unselectedItemColor: Colors.grey, // Seçili olmayan öğelerin rengi
        backgroundColor: Colors.white, // Arka plan rengi
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Ana Sayfa', // Ana sayfa etiketi
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.lightbulb),
            label: 'İpuçları', // İpuçları etiketi
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person), // Ortada profil simgesi
            label: 'Profil', // Profil etiketi
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            // Ana Sayfa
            context.go('/home');  // Ana sayfaya git
          } else if (index == 1) {
            // İpuçları
            context.go('/ipuclari');
          } else if (index == 2) {
            // Profil
            context.go('/profile');  // Profil sayfasına git
          }
        },
      ),
    );
  }
}
