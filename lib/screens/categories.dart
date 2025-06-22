import 'package:flutter/material.dart';
import 'package:mealsapp/data/data.dart';
import 'package:mealsapp/modals/meal.dart';
import 'package:mealsapp/widgets/category_grid_item.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({required this.filteredMeals, super.key});
  final List<Meal> filteredMeals;

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
      lowerBound: 0,
      upperBound: 1,
    );

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      child: GridView(
        padding: EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          for (final category in availableCategories)
            CategoryGridItem(
              filteredMeals: widget.filteredMeals,
              category: category,
            ),
        ],
      ),
      builder: (context, child) => SlideTransition(position: Tween(begin: Offset(0, 0.3), end: Offset(0, 0)).animate(CurvedAnimation(parent: _animationController, curve: Curves.easeInOut)), child: child,)
    );
  }
}
