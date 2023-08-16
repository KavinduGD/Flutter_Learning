import 'package:flutter/material.dart';
// import 'gradient_container.dart';
import 'package:dise_app/gradient_container.dart';

void main() {
//provided by flutter
//MaterialApp() is just a constructor
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
            [Color.fromARGB(255, 26, 2, 80), Color.fromARGB(255, 45, 7, 98)]),
      ),
    ),
  );
}
