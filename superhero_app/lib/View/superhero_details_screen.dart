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
              child: Column(
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
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: double.parse(superhero.powerStats.power),
                              width: 30,
                              decoration: BoxDecoration(
                                color: const Color(0xFF00BB19),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            Text("Power"),
                          ],
                        ),

                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: double.parse(
                                superhero.powerStats.intelligence,
                              ),
                              width: 30,
                              decoration: BoxDecoration(
                                color: const Color(0xFF0015D1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            Text("Intelligence"),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: double.parse(
                                superhero.powerStats.durability,
                              ),
                              width: 30,
                              decoration: BoxDecoration(
                                color: const Color(0xFF01C7B6),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            Text("Durability"),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: double.parse(
                                superhero.powerStats.strength,
                              ),
                              width: 30,
                              decoration: BoxDecoration(
                                color: const Color(0xFFA0E919),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            Text("Strength"),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: double.parse(
                                superhero.powerStats.speed,
                              ),
                              width: 30,
                              decoration: BoxDecoration(
                                color: const Color(0xFFA0E919),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            Text("Speed"),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: double.parse(superhero.powerStats.combat),
                              width: 30,
                              decoration: BoxDecoration(
                                color: const Color(0xFF8F009C),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            Text("Combact"),
                          ],
                        ),
                      ],
                    ),
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
