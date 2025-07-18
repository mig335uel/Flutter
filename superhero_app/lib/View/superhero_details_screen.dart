import 'package:flutter/material.dart';
import 'package:superhero_app/Data/Model/superhero_details_response.dart';

class SuperheroDetailsScreen extends StatelessWidget {
  final SuperheroDetailsResponse superhero;
  const SuperheroDetailsScreen({super.key, required this.superhero});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar(),
    );

  }
    AppBar topBar(){
      return AppBar(
        backgroundColor: Colors.red,
        title: Text(superhero.name),
        foregroundColor: Colors.white, 
      );
    }
}