import 'package:flutter/material.dart';
import 'package:flutter_app/screens/ipuclari_screen.dart';
import 'package:flutter_app/screens/profile_screen.dart';
import 'package:go_router/go_router.dart';
import '../screens/loading_screen.dart';
import '../screens/home_screen.dart';
import '../screens/onboarding_page.dart'; // OnboardingPage sınıfını içe aktarıyoruz

// Router yapılandırması
final GoRouter router = GoRouter(
  initialLocation: '/onboarding',  // Başlangıç rotası
  routes: [
    GoRoute(
      path: '/onboarding', // onboarding ekranı
      builder: (context, state) => const OnboardingPage(), // OnboardingPage kullanılıyor
    ),
    GoRoute(
      path: '/',
      builder: (context, state) => const LoadingScreen(), // Yükleme ekranı
    ),
    GoRoute(
      path: '/home',  // Ana sayfa
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/profile', // Profil ekranı
      builder: (context, state) => const ProfileScreen(),
    ),
    GoRoute(
      path: '/ipuclari', // İpuçları ekranı
      builder: (context, state) => const IpuclariScreen(),
    ),
  ],
);

void main() {
  runApp(MyApp(router: router));
}

class MyApp extends StatelessWidget {
  final GoRouter router;

  const MyApp({super.key, required this.router});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,  // GoRouter'ı doğru şekilde yapılandırıyoruz
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
