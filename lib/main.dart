//import 'dart:html';

import 'package:calculadora_imc/home/home.page.dart';
import 'package:calculadora_imc/home/teste.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());

  final person = Person(age: 22, name: "Gabriel", lastName: "Pivoto");
  print(person.name);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora IMC',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
