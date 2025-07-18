import 'package:superhero_app/Data/Model/superhero_details_response.dart';

class SuperheroResponse{

  final String response;
  final List<SuperheroDetailsResponse> result;

  SuperheroResponse({required this.response, required this.result});

  factory SuperheroResponse.fromJson(Map<String, dynamic> json){
    var list = json["results"] as List;
    List<SuperheroDetailsResponse> listaHeroe = list.map((hero)=>SuperheroDetailsResponse.fromJson(hero)).toList();


    return SuperheroResponse(response: json["response"], result: listaHeroe);
  }

}
