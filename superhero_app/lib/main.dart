import 'package:flutter/material.dart';
import 'package:superhero_app/View/super_hero_search.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SuperHeroSearchScreen()
      );
  }
}
