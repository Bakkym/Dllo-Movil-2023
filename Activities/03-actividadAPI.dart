import 'dart:convert';

import 'package:http/http.dart' as http;

void main(List<String> args) async {
  String host = 'api.chucknorris.io';
  String path = '/jokes/random';
  List<Joke> jokes = [];


  for (var i = 0; i < 50; i++) {
    await getJoke(host, path).then((value){
      String body = value.body;
      var resultJson = jsonDecode(body);
      jokes.add(Joke.fromJson(resultJson));
      
  });
    
  }print(jokes);


}

Future getJoke(String host, String path) async {
  Uri url = Uri.https(host, path);
  var result = await http.get(url);
  return result;

}

class Joke {
  late String joke;
  late String icon_url;

  Joke.fromJson(Map<String, dynamic> json) {
    this.joke = json["value"];
    this.icon_url = json["icon_url"];
    
  }

  @override
  String toString() {
    // TODO: implement toString
  return "Joke: $joke \n";
  }


}