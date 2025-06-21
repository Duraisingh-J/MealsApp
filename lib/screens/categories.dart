import 'package:flutter/material.dart';
import 'package:mealsapp/data/data.dart';
import 'package:mealsapp/modals/meal.dart';
import 'package:mealsapp/widgets/category_grid_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({required this.onToggleFavorite,super.key});
  final void Function(Meal) onToggleFavorite;

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(16),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: [
        for (final category in availableCategories)
          CategoryGridItem(category: category, onToggleFavorite: onToggleFavorite,),
      ],
    );
  }
}
