import 'package:flutter/material.dart';

class TextExample extends StatelessWidget {
  const TextExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('Texto Añadido', style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold))
      ],
    );
  }
}