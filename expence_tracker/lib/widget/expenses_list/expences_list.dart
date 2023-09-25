import 'package:expence_tracker/models/expense.dart';
import 'package:expence_tracker/widget/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  final List<Expense> expenseList;
  final void Function(Expense expense) removeExpense;
  const ExpensesList({
    super.key,
    required this.expenseList,
    required this.removeExpense,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenseList.length,
      itemBuilder: (context, index) => Dismissible(
        key: ValueKey(expenseList[index]),
        onDismissed: (direction) {
          removeExpense(expenseList[index]);
        },
        child: ExpenseItem(
          expense: expenseList[index],
        ),
      ),
    );
  }
}
