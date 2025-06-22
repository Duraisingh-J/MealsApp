import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mealsapp/provider/favorite_provider.dart';
import 'package:mealsapp/modals/meal.dart';
import 'package:transparent_image/transparent_image.dart';

class MealDetailsScreen extends ConsumerWidget {
  final Meal meal;
  MealDetailsScreen(this.meal, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoriteMeals = ref.watch(favoriteMealsProvider);

    final isFavorite = favoriteMeals.contains(meal);

    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
        actions: [
          IconButton(
            onPressed: () {
              final isAdded = ref
                  .read(favoriteMealsProvider.notifier)
                  .toggleMealFavoriteState(meal);
              ScaffoldMessenger.of(context).clearSnackBars();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  duration: Duration(milliseconds: 500),
                  content: Text(
                    isAdded
                        ? 'Meal marked as a favorite'
                        : 'Meal is no longer favorite',
                  ),
                ),
              );
            },
            icon: AnimatedSwitcher(
              duration: Duration(milliseconds: 300),
              transitionBuilder: (child, animation) {
                return RotationTransition(turns: Tween(begin: 0.8, end: 1.0).animate(animation), child: child,);
              },
              child: Icon(isFavorite ? Icons.star : Icons.star_border, key:ValueKey(isFavorite) ,),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Hero(
            tag: meal.id,
            child: FadeInImage(
              placeholder: MemoryImage(kTransparentImage),
              image: NetworkImage(meal.imageUrl),
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ingredients : ',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    for (final ingredient in meal.ingredients)
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                        child: Text(
                          ingredient,
                          style: TextStyle(
                            fontSize: 15,
                            color: const Color.fromARGB(177, 255, 255, 255),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    SizedBox(height: 15),
                    Text(
                      'Steps : ',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    for (final step in meal.steps)
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                        child: Text(
                          step,
                          style: TextStyle(
                            fontSize: 15,
                            color: const Color.fromARGB(177, 255, 255, 255),
                          ),
                        ),
                      ),
                    SizedBox(height: 15),
                    Text(
                      'Calories : ${meal.calories}',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Specifications : ',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    for (final label in meal.labels)
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                        child: Text(
                          label,
                          style: TextStyle(
                            fontSize: 15,
                            color: const Color.fromARGB(177, 255, 255, 255),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
