import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:superhero_app/Data/Model/superhero_response.dart';
import 'package:http/http.dart' as http;

class Repository {
  Future<SuperheroResponse?> fetchSuperHeroInfo(String name) async{
    final response = await http.get(Uri.parse("https://superheroapi.com/api/a130982ee2fd2ebb1f1483587beae248/search/$name"));


    if(response.statusCode == 200){
      var decodeJson = jsonDecode(response.body);
      SuperheroResponse hero = SuperheroResponse.fromJson(decodeJson);
      return hero;
    }else{
      return null;
    }
  }
}