import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mealsapp/modals/meal.dart';
import 'package:transparent_image/transparent_image.dart';

class MealDetailsScreen extends StatelessWidget {
  final Meal meal;

  const MealDetailsScreen(this.meal, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(meal.title)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FadeInImage(
            placeholder: MemoryImage(kTransparentImage),
            image: NetworkImage(meal.imageUrl),
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10),
          Padding(
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
        ],
      ),
    );
  }
}
