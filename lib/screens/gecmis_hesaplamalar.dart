import 'package:flutter/material.dart';

class GecmisHesaplamalar extends StatelessWidget {
  const GecmisHesaplamalar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Geçmiş Hesaplamalar'),
      ),
      body: const Center(
        child: Text('Geçmiş Hesaplamalar Sayfası'),
      ),
    );
  }
}
