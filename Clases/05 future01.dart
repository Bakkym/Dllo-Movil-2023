void main(List<String> args) async {
  // USANDO .THEN()
  print('Inicio');
  getEstudiantes().then((value) => print(value));
  print('Fin');

  // USANDO ASYNC AWAIT
  String value = await getEstudiantes();
  print(value);
}

Future getEstudiantes() {
  return Future.delayed(Duration(seconds: 5), () {
    return "Hola mundo";
  });
}
