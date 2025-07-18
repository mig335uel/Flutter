import 'package:flutter/material.dart';
import 'package:superhero_app/Data/Model/superhero_details_response.dart';
import 'package:superhero_app/Data/Model/superhero_response.dart';
import 'package:superhero_app/Data/repository.dart';

class SuperHeroSearchScreen extends StatefulWidget {
  const SuperHeroSearchScreen({super.key});

  @override
  State<SuperHeroSearchScreen> createState() => _SuperHeroSearchScreenState();
}

class _SuperHeroSearchScreenState extends State<SuperHeroSearchScreen> {
  Future<SuperheroResponse?>? _superHeroInfo;
  Repository repo = Repository();
  bool _isTextEmpty = true;
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
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(48),
                ),
              ),
              onChanged: (text) {
                setState(() {
                  _isTextEmpty = text.isEmpty;
                  _superHeroInfo = repo.fetchSuperHeroInfo(text);
                });
              },
            ),
            bodyBuild(_isTextEmpty),
          ],
        ),
      ),
    );
  }

  FutureBuilder bodyBuild(bool textEmpty) {
    return FutureBuilder(
      future: _superHeroInfo,
      builder: (context, snapshot) {
        if(textEmpty) return Text("Introduce un nombre");
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        } else if (snapshot.hasData) {
          var listaHeroe = snapshot.data?.result;
          return Expanded(
            child: ListView.builder(
              itemCount: listaHeroe?.length ?? 0,
              itemBuilder: (context, index) {
                if (listaHeroe != null) {
                  return itemHero(listaHeroe[index]);
                } else return null;
              },
            ),
          );
        } else {
          return Text("No hay Resultados");
        }
      },
    );
  }

  Padding itemHero(SuperheroDetailsResponse item) => Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(16),
        color: Colors.red,
    
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              item.url,
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
              alignment: Alignment(0, -0.6),
            ),
          ),
          Text(item.name, style: TextStyle(fontSize: 20, color: Colors.white, fontWeight:FontWeight.w300)),
        ],
      ),
    ),
  );
}
