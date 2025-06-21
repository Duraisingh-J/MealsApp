enum Complexity { easy, medium, hard }

enum Spice { none, mild, medium, hot }

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final String calories;
  final int cookingTime;
  final Complexity complexity;
  final Spice spice;
  final List<String> labels;

  const Meal({
    required this.id,
    required this.categories,
    required this.title,
    required this.imageUrl,
    required this.ingredients,
    required this.steps,
    required this.calories,
    required this.cookingTime,
    required this.complexity,
    required this.spice,
    required this.labels,
  });
}
