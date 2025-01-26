// import 'package:flutter/material.dart';

// class IpuclariScreen extends StatelessWidget {
//   const IpuclariScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Text("ipuclari ekranim"),
//       ) ,
//     );
//   }
// }

// ipuclari_screen.dart
import 'package:flutter/material.dart';

class IpuclariScreen extends StatelessWidget {
  const IpuclariScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('İpuçları')),
      body: const Center(child: Text('İpuçları Ekranı')),
    );
  }
}
