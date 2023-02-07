void main(List<String> args) {
  // variables implícitas

  var nombre = "Camilo";
  nombre = "Carlos";

  var nombres =  ["nombre1", "nombre2", "nombre3", 5];

  const version = "1.0.0";
  version ="100"; // No puedo asignar otro valor

  dynamic edad = 50;
  edad = "Hola";

  // Variables explícitas
  String nombre2 = "Juan";
  List<String> nombres2 = ["nombre1", "nombre2", "nombre3"];

  Set<int> calificaciones = {1,2,444,533,5,5}; // El set es para elementos que no se repiten

  Map<String, dynamic> diccionario = {
    "atributo1": "hola",
    "atributo2":"cómo",
    "atributo3":"estás",
    "atributo4": 5
  }

}