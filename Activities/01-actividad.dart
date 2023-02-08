import 'dart:io';

void main(List<String> args) {
  bool continuar = true;
  var datos = [];

  while (continuar) {
    print('Ingrese sexo: 1.Hombre 2.Mujer');
    String sexo = stdin.readLineSync().toString();
    print('Ingrese Estado: 1.Soltero 2.Casado 3.Viudo');
    String estado = stdin.readLineSync().toString();
    print('Ingrese su edad');
    int edad = int.parse(stdin.readLineSync().toString());

    switch (sexo) {
      case "1":
        {
          sexo = 'Hombre';
        }
        break;

      case "2":
        {
          sexo = 'Mujer';
        }
        break;
    }

    switch (estado) {
      case "1":
        {
          estado = 'Soltero';
        }
        break;
      case "2":
        {
          estado = 'Casado';
        }
        break;
      case "3":
        {
          estado = 'Viudo';
        }
        break;
    }

    datos.add({'sexo': sexo, 'estado': estado, 'edad': edad});
    print(datos);

    print('desea continuar? 1.Sí 2.No');
    String continuacion = stdin.readLineSync().toString();

    switch (continuacion) {
      case '1':
        {
          continuar = true;
        }
        break;

      case '2':
        {
          continuar = false;
        }
        break;
    }
  }

  bool resultados = true;
  while (resultados) {
    print("""1.Porcentaje hombres solteros
      2.Edad promedio hombres casados
      3. Porcentaje mujeres solteras
      4. Salir
      """);

    String menu = stdin.readLineSync().toString();

    switch (menu) {
      case '1':
        {
          dynamic contadorHombresSolteros = 0;
          dynamic contadorHombres = 0;
          for (var element in datos) {
            String genero = element['sexo'];
            String estadoCivil = element['estado'];

            if (genero == 'Hombre' && estadoCivil == 'Soltero') {
              contadorHombresSolteros++;
            }

            if (genero == 'Hombre') {
              contadorHombres++;
            }
          }
          dynamic porcentajeHombresSolteros =
              contadorHombresSolteros * 100 / contadorHombres;
          print(
              'el porcentaje de hombres solteros es: $porcentajeHombresSolteros');
        }
        break;

      case '2':
        {
          int sumEdades = 0;
          int count = 0;

          for (var element in datos) {
            String genero = element['sexo'];
            String estadoCivil = element['estado'];
            int edad = element['edad'];

            if (genero == 'Hombre' && estadoCivil == 'Casado') {
              sumEdades += edad;
              count ++;

            }
          }


          var promedioEdades = sumEdades / count;
          print(
              'El promedio de edad de los hombres casados es: $promedioEdades');
        }
        break;

      case '3':
        {
          dynamic contadorMujeresSolteras = 0;
          dynamic contadorSolteros = 0;
          for (var element in datos) {
            String genero = element['sexo'];
            String estadoCivil = element['estado'];

            if (genero == 'Mujer' && estadoCivil == 'Soltero') {
              contadorMujeresSolteras++;
            }

            if (estadoCivil == 'Soltero') {
              contadorSolteros++;
            }
          }
          dynamic porcentajeMujeresSolteras =
              contadorMujeresSolteras * 100 / contadorSolteros;
          print(
              'El porcentaje de mujeres solteras es: $porcentajeMujeresSolteras');
        }
        break;

      case '4':
        {
          resultados = false;
        }
        break;
    }
  }
}
