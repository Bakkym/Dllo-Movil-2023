void main(List<String> args) {
   String universidad = "Udem";
   int estudiantes = 17;
   print('La universidad de medellín $universidad con $estudiantes estudiantes');
   String mensaje = """tedasdasda
   asdasdasdas
   asdasdas
   """;
   print(mensaje);

  var nombres =  ["nombre1", "nombre2", "nombre3", 5];
  List<String> nombres2 = ["nombre1", "nombre2", "nombre3"];

  print([...nombres, ...nombres2]); // unificar las listas


}