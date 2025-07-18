import 'package:flutter/material.dart';
import 'package:imc_calculator/Core/app_colors.dart';

class GenSelector extends StatefulWidget {
  
  const GenSelector({super.key});

  @override
  State<GenSelector> createState() => _GenSelectorState();
}

class _GenSelectorState extends State<GenSelector> {
  String? genSelector;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: GestureDetector(
            onTap: (){
              setState(() {
                genSelector = "Hombre";
              });
            },
            child: Padding(
              padding: EdgeInsets.only(
                right: 8,
                left: 16.0,
                top: 16.0,
                bottom: 16.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: genSelector == "Hombre"
                      ? AppColors.backgroundSelected
                      : AppColors.backgroundComponent,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Image.asset("assets/images/male.png", height: 100),
                      SizedBox(height: 18),
                      Text(
                        "Hombre",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),

        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                genSelector = "Mujer";
              }); 
            },
            child: Padding(
              padding: const EdgeInsets.only(
                right: 16.0,
                top: 16.0,
                left: 8,
                bottom: 16.0,
                
              ),

              child: Container(
                decoration: BoxDecoration(
                  color: genSelector == "Mujer"
                      ? AppColors.backgroundSelected
                      : AppColors.backgroundComponent,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Image.asset("assets/images/female.png", height: 100),
                      SizedBox(height: 18),
                      Text(
                        "Mujer",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
