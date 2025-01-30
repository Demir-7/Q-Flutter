import 'package:flutter/material.dart';
import 'package:flutter_app/screens/hesaplama_araclari.dart';  // Bu satırı sadece bir kez ekleyin
import 'package:go_router/go_router.dart';
import 'screens/loading_screen.dart';
import 'screens/home_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/ipuclari_screen.dart';
import 'screens/onboarding_page.dart';
import 'screens/tasarruf_onerileri.dart';
import 'screens/settings_page.dart'; // SettingsPage widget'ını import ettik

void main() {
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      path: '/onboarding',
      builder: (context, state) => const OnboardingPage(),
    ),
    GoRoute(
      path: '/loading',
      builder: (context, state) => const LoadingScreen(), // /loading için rota ekledik
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => const ProfileScreen(),
    ),
    GoRoute(
      path: '/ipuclari',
      builder: (context, state) => const IpuclariScreen(),
    ),
    GoRoute(
      path: '/hesaplama_araclari',
      builder: (context, state) =>  const HesaplamaAraclari(),
    ),
    GoRoute(
      path: '/tasarruf_onerileri',
      builder: (context, state) => TasarrufOnerileri(),
    ),
    GoRoute(
      path: '/settings',
      builder: (context, state) => const SettingsPage(),
    ),
  ],
  initialLocation: '/onboarding', // Başlangıç olarak /onboarding ekranını gösteriyoruz
);

class GecmisHesaplamalar {
  const GecmisHesaplamalar();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false, // DEBUG yazısını kaldırmak için
      routerConfig: _router,
    );
  }
}
