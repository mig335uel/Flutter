import 'package:flutter/material.dart';

class TextFieldExample extends StatelessWidget {
  const TextFieldExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 60),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Introduce tu email",
              border: OutlineInputBorder(),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            decoration: InputDecoration(
              suffixIcon: Icon(Icons.remove_red_eye),
              hintText: "Introduce tu Contraseña",
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ],
    );
  }
}
