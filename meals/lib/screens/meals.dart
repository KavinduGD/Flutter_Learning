import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/screens/meal_details.dart';
import 'package:meals/widgets/meal_item.dart';

class MealScreen extends StatelessWidget {
  final String title;
  final List<Meal> meals;

  const MealScreen({
    super.key,
    required this.title,
    required this.meals,
  });

  void selectMeal({required meal, required BuildContext context}) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => MealDetailsScreen(
          meal: meal,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget bodyContent = ListView.builder(
      itemBuilder: (context, index) {
        return MealItem(
          meal: meals[index],
          onSelectMeal: (meal) {
            selectMeal(context: context, meal: meals[index]);
          },
        );
      },
      itemCount: meals.length,
    );

    if (meals.isEmpty) {
      bodyContent = Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Oh.... Nothing Here",
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onBackground),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              "Try selecting a different category!",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Theme.of(context).colorScheme.onBackground),
            )
          ],
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: bodyContent,
    );
  }
}
