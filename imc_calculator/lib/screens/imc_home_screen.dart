import 'package:flutter/material.dart';
import 'package:imc_calculator/Components/gen_selector.dart';
import 'package:imc_calculator/Components/height_selector.dart';
import 'package:imc_calculator/Components/number_selector.dart';
import 'package:imc_calculator/Core/app_colors.dart';
import 'package:imc_calculator/Core/text_styles.dart';
import 'package:imc_calculator/screens/imc_resoult_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double peso = 50;
  int edad = 20;
  double height = 170;
  int max = 250, min = 100;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GenSelector(),
        HeightSelector(
          height: height,
          min: min,
          max: max,
          onChange: (newHegiht) {
            setState(() {
              height = newHegiht;
            });
          },
        ),
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  right: 8,
                  left: 16.0,
                  top: 16.0,
                  bottom: 16.0,
                ),
                child: NumberSelector(
                  title: "Peso",
                  unity: "Kg",
                  value: peso,
                  onDecrement: () {
                    setState(() {
                      peso -= 0.5;
                    });
                  },
                  onIncrement: () {
                    setState(() {
                      peso += 0.5;
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  right: 16,
                  left: 8.0,
                  top: 16.0,
                  bottom: 16.0,
                ),
                child: NumberSelector(
                  title: "Edad",
                  value: edad.toDouble(),
                  onDecrement: () {
                    setState(() {
                      edad--;
                    });
                  },
                  onIncrement: () {
                    setState(() {
                      edad++;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
        Spacer(),
        Padding(
          padding: EdgeInsetsGeometry.all(16),
          child: SizedBox(
            height: 60,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ImcResoultScreen(height: height, weight: peso)),
                );
              },
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  AppColors.backgroundComponent,
                ),
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(8),
                  ),
                ),
              ),
              child: Text("Calcular", style: Textstyles.bodyText),
            ),
          ),
        ),
      ],
    );
  }
}
