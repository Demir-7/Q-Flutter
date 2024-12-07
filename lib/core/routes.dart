// // uygulamada sayfalar ve naavigasyon işlmeleri 

// import 'package:flutter/material.dart';
// import 'package:flutter_app/screens/ipuclari_screen.dart';
// import 'package:flutter_app/screens/profile_screen.dart';
// import 'package:flutter_app/screens/world_rank.dart';
// import 'package:go_router/go_router.dart';
// import '../screens/loading_screen.dart';
// import '../screens/home_screen.dart';

// // Router yapılandırması
// final router = GoRouter(
//   initialLocation: '/',  // Başlangıç rotası
//   routes: [
//     GoRoute(
//       path: '/',
//       builder: (context, state) => const LoadingScreen(),
//     ),
//     GoRoute(
//       path: '/home',
//       builder: (context, state) => const HomeScreen(),
//     ),
//     GoRoute(
//       path: '/profile',
//       builder: (context, state) => const ProfileScreen() ,
//     ),
//     GoRoute(
//       path: '/ipuclari',
//       builder: (context, state) => const IpuclariScreen() ,
//     ),
//     GoRoute(
//       path: '/dunyasiralama',
//       builder: (context, state) => const WorldRank() ,
//     )
//   ],
// );

import 'package:flutter/material.dart';
import 'package:flutter_app/screens/ipuclari_screen.dart';
import 'package:flutter_app/screens/profile_screen.dart';
import 'package:flutter_app/screens/world_rank.dart';
import 'package:go_router/go_router.dart';
import '../screens/loading_screen.dart';
import '../screens/home_screen.dart';

// Router yapılandırması
final GoRouter router = GoRouter(
  initialLocation: '/',  // Başlangıç rotası
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoadingScreen(), // Başlangıç ekranı
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
    GoRoute(
      path: '/dunyasiralama', // Dünya sıralaması ekranı
      builder: (context, state) => const WorldRank(),
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

