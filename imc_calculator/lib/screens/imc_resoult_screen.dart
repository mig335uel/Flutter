import 'dart:math';

import 'package:flutter/material.dart';
import 'package:imc_calculator/Core/app_colors.dart';
import 'package:imc_calculator/Core/text_styles.dart';

class ImcResoultScreen extends StatelessWidget {
  final double height;
  final double weight;
  const ImcResoultScreen({
    super.key,
    required this.height,
    required this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: toolbarDefault(),
      body: bodyResoult(),
    );
  }

  AppBar toolbarDefault() {
    return AppBar(
      backgroundColor: AppColors.primary,
      title: Text("Resultados", style: Textstyles.appbarText),
      foregroundColor: Colors.white,
    );
  }

  Padding bodyResoult() {
    double heightInMeter = height /100;
    double imcResoult = weight / pow(heightInMeter, 2);
    
    return Padding(
      padding: EdgeInsets.all(16.0),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text("Tu Resultado: ", style: Textstyles.heightText),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 32, bottom: 32),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.backgroundComponent,
                borderRadius: BorderRadius.circular(18)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  Text("Dado la altura $height cm y el peso $weight Kg, su indice de masa corporal es:", style: Textstyles.bodyText),
                  Text(imcResoult.toStringAsFixed(2), style: Textstyles.heightText, textAlign: TextAlign.start,)
                ],),
              )
            ),
          ),
        ),
        Container(
          height: 60,
          width: double.infinity,
          child: ElevatedButton(onPressed: (){}, style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    AppColors.backgroundComponent,
                  ),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(8),
                    ),
                  ),
                ),child: Text("Finalizar", style: Textstyles.bodyText)),
        )],
      ),
      
    );
  }
}
