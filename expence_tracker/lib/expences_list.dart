import 'package:expence_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  final List<Expense> expenseList;
  const ExpensesList({
    super.key,
    required this.expenseList,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenseList.length,
      itemBuilder: (context, index) => Text(expenseList[index].title),
    );
  }
}
