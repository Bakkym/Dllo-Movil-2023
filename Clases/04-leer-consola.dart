import 'dart:io';

void main(List<String> args) {
  print("Ingrese un 1 para continuar o 0 para salir");
  String input = stdin.readLineSync().toString();
  while (input == "1") {
    String input = stdin.readLineSync().toString();
    print(input);
    print("Ingrese un 1 para continuar o 0 para salir");

  }

}