import 'package:flutter/material.dart';
import 'package:superhero_app/Data/Model/superhero_details_response.dart';

class SuperheroDetailsScreen extends StatelessWidget {
  final SuperheroDetailsResponse superhero;
  const SuperheroDetailsScreen({super.key, required this.superhero});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: topBar(), body: bodyContent());
  }

  AppBar topBar() {
    return AppBar(
      backgroundColor: Colors.red,
      title: Text(superhero.name),
      foregroundColor: Colors.white,
    );
  }

  Column bodyContent() {
    return Column(
      children: [
        Image.network(
          superhero.url,
          height: 300,
          width: double.infinity,
          fit: BoxFit.cover,
          alignment: Alignment(0, -0.6),
        ),
        Text(
          superhero.name,
          style: TextStyle(
            fontSize: 40,
            color: Colors.indigo,
            fontWeight: FontWeight.w500,
          ),
        ),

        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromARGB(61, 192, 192, 192),
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListView(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Real Name: ${superhero.fullName}",
                        style: TextStyle(fontSize: 15, color: Colors.indigo),
                      ),
                      Text("\n"),

                      Text(
                        "PowerStats:",
                        style: TextStyle(fontSize: 20, color: Colors.indigo),
                      ),
                      Row(children: [
                        Text("intelligence:\t", style: TextStyle(fontSize: 15, color: Colors.indigo)),
                        Text(superhero.powerStats.intelligence, style: TextStyle(fontSize: 15, color: Colors.indigo)),
                      ],)
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
