import 'package:activity3/cards.dart';
import 'package:activity3/navSection.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  Scaffold(
          backgroundColor: Color.fromARGB(195, 42, 160, 160),
          body: Container(
            padding: const EdgeInsets.only(top: 100),
            child: Column(
            children: [
              navSection,
              cards
            ],
              
            )
          )),
    );
  }
}
