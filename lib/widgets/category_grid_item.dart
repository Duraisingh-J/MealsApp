import 'package:flutter/material.dart';
import 'package:mealsapp/data/data.dart';
import 'package:mealsapp/modals/category.dart';
import 'package:mealsapp/screens/meals.dart';

class CategoryGridItem extends StatelessWidget {
  final Category category;

  const CategoryGridItem({required this.category, super.key});

  void _selectCategory(context) {
    final filteredMeals = availableMeals
        .where((meal) => meal.category == category.id)
        .toList();

    for (var meal in filteredMeals) {
      print(meal.title);
    }
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => MealsScreen(category.title, filteredMeals),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _selectCategory(context);
      },
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        padding: EdgeInsets.all(16),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [
              // ignore: deprecated_member_use
              category.color.withOpacity(0.5),
              // ignore: deprecated_member_use
              category.color.withOpacity(0.9),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
            color: Theme.of(context).colorScheme.onSurface,
            fontSize: 30,
          ),
        ),
      ),
    );
  }
}
