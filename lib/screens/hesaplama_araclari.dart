import 'package:flutter/material.dart';

class HesaplamaAraclari extends StatelessWidget {
  const HesaplamaAraclari({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hesaplama Araçları'),
      ),
      body: const Center(
        child: Text('Hesaplama Araçları Sayfası'),
      ),
    );
  }
}
