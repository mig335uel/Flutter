import 'package:flutter/material.dart';
import 'package:imc_calculator/Core/app_colors.dart';
import 'package:imc_calculator/screens/imc_home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(backgroundColor: AppColors.primary, title: const Text('IMC Calculator', style: TextStyle(color: Colors.white))),
        body: Center(
          child: HomeScreen(),
        ),
      ),
    );
  }
}
