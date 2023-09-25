import 'package:flutter/material.dart';
import 'package:expence_tracker/widget/expenses.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData()
        .copyWith(useMaterial3: true, scaffoldBackgroundColor: Colors.red),
    home: const Expenses(),
  ));
}
