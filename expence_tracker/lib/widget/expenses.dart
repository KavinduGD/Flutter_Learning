import 'package:expence_tracker/widget/expenses_list/expences_list.dart';
import 'package:expence_tracker/models/expense.dart';
import 'package:expence_tracker/widget/new-expense.dart';
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
      amount: 11.9995,
      date: DateTime.now(),
      category: Category.food,
    ),
    Expense(
      title: "Cinama",
      amount: 19.3434,
      date: DateTime.now(),
      category: Category.leisure,
    ),
  ];

  void _openExpenseOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => NewExpense(),
    );
  }

  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter ExpenseTracker',
        ),
        actions: [
          IconButton(
            onPressed: _openExpenseOverlay,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        children: [
          const Text("Chart"),
          Expanded(
            child: ExpensesList(
              expenseList: _registerdExpenses,
            ),
          ),
        ],
      ),
    );
  }
}
