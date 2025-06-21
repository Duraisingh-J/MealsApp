import 'package:flutter/material.dart';
import 'package:mealsapp/modals/meal.dart';
import 'package:mealsapp/widgets/meal_grid_item.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({this.title, required this.meals,  required this.onToggleFavorite, super.key});

  final void Function(Meal) onToggleFavorite;

  final String? title;
  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    Widget content = SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 400,
            childAspectRatio: 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          children: [for (final meal in meals) MealGridItem(meal, onToggleFavorite)],
        ),
      ),
    );

    if (meals.isEmpty) {
      content = Center(
        child: Text(
          "No meals found",
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
      );
    }

    if (title == null) {
      return content;
    }

    return Scaffold(
      appBar: AppBar(title: Text(title!)),
      body: content,
    );
  }
}
