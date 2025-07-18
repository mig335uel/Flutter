import 'package:flutter/material.dart';

class ColumnExamples extends StatelessWidget {
  const ColumnExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Column Examples"),
        backgroundColor: const Color.fromARGB(255, 2, 12, 150),
      ),
      body:Container(

      width: double.infinity,
      color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Hola Miguel"),
          Text("Hola Miguel"),
          Text("Hola Miguel"),
          Text("Hola Miguel"),
          Text("Hola Miguel"),
          Text("Hola Miguel"),
          Text("Hola Miguel"),
          Text("Hola Miguel"),
          Text("Hola Miguel"),
          Text("Hola Miguel"),
          Text("Hola Miguel"),
          Text("Hola Miguel"),
          Text("Hola Miguel"),
          Text("Hola Miguel"),
          Text("Hola Miguel"),
          Text("Hola Miguel"),
          Text("Hola Miguel"),
          Text("Hola Miguel"),
          Text("Hola Miguel"),
          Text("Hola Miguel"),
          Text("Hola Miguel"),
          Text("Hola Miguel"),
          Text("Hola Miguel"),
          Text("Hola Miguel"),
          Text("Hola Miguel"),
          Text("Hola Miguel"),
          Text("Hola Miguel")
        ],
      ),
      ),
    );
  }
}