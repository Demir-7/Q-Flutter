import 'package:flutter/material.dart';

class TasarrufOnerileri extends StatelessWidget {
  const TasarrufOnerileri({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tasarruf Önerileri'),
      ),
      body: const Center(
        child: Text('Tasarruf Önerileri Sayfası'),
      ),
    );
  }
}
