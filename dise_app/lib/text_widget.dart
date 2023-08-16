import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  const TextWidget(this.text, {super.key});

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
          color: Colors.blue, fontSize: 30, fontWeight: FontWeight.bold),
    );
  }
}
