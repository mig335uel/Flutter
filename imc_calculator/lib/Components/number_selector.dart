import 'package:flutter/material.dart';
import 'package:imc_calculator/Core/app_colors.dart';
import 'package:imc_calculator/Core/text_styles.dart';

class NumberSelector extends StatefulWidget {
  final String title;
  final String? unity;
  final double value;
  final Function() onDecrement;
  final Function() onIncrement;
  const NumberSelector({super.key, required this.title, this.unity, required this.value, required this.onDecrement, required this.onIncrement});

  @override
  State<NumberSelector> createState() => _NumberSelectorState();
}

class _NumberSelectorState extends State<NumberSelector> {

  @override
  Widget build(BuildContext context) {
    String unit = widget.unity ?? "";
    return Container(
      decoration: BoxDecoration(
        color: AppColors.backgroundComponent,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: EdgeInsetsGeometry.all(12),
        child:Column(
        children: [
          Text(widget.title, style: Textstyles.bodyText),
          Text("${widget.value} $unit", style: Textstyles.heightText),
          Row(
            children: [
              FloatingActionButton(
                heroTag: null,
                onPressed: () {
                  widget.onDecrement();
                },
                shape: CircleBorder(),
                child: Icon(Icons.remove, color: Colors.white),
                backgroundColor: AppColors.backgroundButtom,
              ),
              Spacer(),
              FloatingActionButton(
                heroTag: null,
                onPressed: () {
                  widget.onIncrement();
                },
                shape: CircleBorder(),
                backgroundColor: AppColors.backgroundButtom,
                child: Icon(Icons.add, color: Colors.white),
              ),
            ],
          ),
        ],
      )
      ),
    );
  }
}
