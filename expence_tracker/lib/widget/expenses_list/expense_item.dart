import 'package:expence_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  final Expense expense;
  const ExpenseItem({super.key, required this.expense});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(left: 20, bottom: 10, right: 20),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('\$${expense.amount.toStringAsFixed(2)}'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(expense.title),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    const Icon(Icons.alarm),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(expense.date.toString()),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
