import 'package:flutter/material.dart';
import 'package:superhero_app/Data/Model/superhero_response.dart';

class SuperHeroSearchScreen extends StatefulWidget {
  const SuperHeroSearchScreen({super.key});

  @override
  State<SuperHeroSearchScreen> createState() => _SuperHeroSearchScreenState();
}

class _SuperHeroSearchScreenState extends State<SuperHeroSearchScreen> {
  late Future<SuperheroResponse?> _superHeroInfo;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SuperHero Search")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Busca un superhéroe",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(48))
              ),
              onChanged: (text){
                  setState(() {
                    
                  });
              },
            ),
          ],
        ),
      ),
    );
  }
}
