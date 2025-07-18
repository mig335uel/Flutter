import 'package:flutter/material.dart';

class ButtomExample extends StatelessWidget {
  const ButtomExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,

      children: [
        
        ElevatedButton(
          onPressed: () {
            print("Arriba España");
          },
          child: Text("Viva España"),
          style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.amberAccent)),
        ),
      ],
    );
  }
}
