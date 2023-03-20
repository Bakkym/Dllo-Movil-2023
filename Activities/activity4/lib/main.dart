import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Generador de contraseñas',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Generador de contraseñas'),
        ),
        body: Center(
          child: PasswordGeneratorButton(),
        ),
      ),
    );
  }
}

class PasswordGeneratorButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        final password = generatePassword(12, true);
        showDialog(
          context: context,
          builder: (_) => AlertDialog(
            title: Text('Contraseña generada'),
            content: Text(password),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('OK'),
              )
            ],
          ),
        );
      },
      child: Text('Generar contraseña'),
    );
  }
}

String generatePassword(int length, bool includeSpecialCharacters) {
  final random = Random.secure();
  final letters = 'abcdefghijklmnopqrstuvwxyz';
  final digits = '0123456789';
  final specialCharacters = '!@#\$%^&*()_+-=[]{}|;:,.<>/?';
  final chars = '$letters$digits${includeSpecialCharacters ? specialCharacters : ''}';

  return List.generate(length, (_) => chars[random.nextInt(chars.length)]).join();
}
