import 'package:expence_tracker/expences_list.dart';
import 'package:expence_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registerdExpenses = [
    Expense(
      title: "Flutter Course",
      amount: 19.99,
      date: DateTime.now(),
      category: Category.food,
    ),
    Expense(
      title: "Cinama",
      amount: 12.34,
      date: DateTime.now(),
      category: Category.leisure,
    ),
  ];
  @override
  Widget build(Object context) {
    return Scaffold(
      body: Column(
        children: [
          const Text("Chart"),
          Expanded(
            child: ExpensesList(expenseList: _registerdExpenses),
          ),
        ],
      ),
    );
  }
}
