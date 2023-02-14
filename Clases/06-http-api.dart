import 'dart:convert';
import 'package:http/http.dart' as http;

void main(List<String> args) {
  String host = 'pokeapi.co';
  String path = '/api/v2/pokemon/';
  List<Pokemon> pokemon = [];
  getPokemons(host, path).then((value) {
    String body = value.body;
    var resultJson = jsonDecode(body);

    for (var element in resultJson["results"]) {
      pokemon.add(Pokemon.fromJson(element));
    }
    print(pokemon);
  });
}

Future getPokemons(String host, String path) async {
  Uri url = Uri.http(host, path);
  var result = await http.get(url);
  return result;
}

class Pokemon {
  // El late sirve para indicar que vamos a inicializar la variable más tarde
  late String name;
  late String url;

  Pokemon.fromJson(Map<String, dynamic> json) {
    this.name = json["name"];
    this.url = json["url"];
  }

  @override
  String toString() {
    // TODO: implement toString
    return "Pokemon $name";
  }
}
