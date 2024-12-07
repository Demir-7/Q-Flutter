import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:go_router/go_router.dart'; // go() metodunu kullanmak için ekleme

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 169, 212, 215),
      body: Center( // Merkezde hizalama için Column yerine Center kullanıldı
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo bölümü
            SizedBox(
              width: 250,
              height: 250,
              child: Image.asset(
                'assets/images/new_logo.webp',
                fit: BoxFit.contain,
              ),
            ),

            const SizedBox(height: 20), // Boşluk eklemek için

            // Yükleme animasyonu
            InkWell(
              onTap: () => context.go("/home"), // Rota değişikliği için GoRouter
              child: SizedBox(
                width: 150,
                child: DotLottieLoader.fromAsset(
                  "assets/motions/loading.lottie",
                  frameBuilder: (BuildContext ctx, DotLottie? dotlottie) {
                    if (dotlottie != null) {
                      return Lottie.memory(dotlottie.animations.values.single);
                    } else {
                      return const CircularProgressIndicator(); // Varsayılan bir yedek
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
