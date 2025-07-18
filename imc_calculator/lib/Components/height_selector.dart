import 'package:flutter/material.dart';
import 'package:imc_calculator/Core/app_colors.dart';
import 'package:imc_calculator/Core/text_styles.dart';

class HeightSelector extends StatefulWidget {
  final int min, max;
  final double height;
  final Function(dynamic newHeight) onChange;
  const HeightSelector({super.key,required this.height,  required this.min, required this.max, required this.onChange});

  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(top: 16, bottom: 16, right: 16, left: 16),
      child:Container(
      decoration: BoxDecoration(color: AppColors.backgroundComponent, borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: EdgeInsetsGeometry.all(12),
        child: Column(
          children: [
            Text("ALTURA", style: Textstyles.bodyText),
            Text("${widget.height} cm", style: Textstyles.heightText),
            Slider(
              value: widget.height,
              onChanged: (newHeight) {
                widget.onChange(newHeight);
              },
              min: widget.min.toDouble(),
              max: widget.max.toDouble(),
              divisions: 150,
            ),
          ],
        ),
      ),
    )
    );
  }
}
