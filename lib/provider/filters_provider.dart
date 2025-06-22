import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mealsapp/provider/meals_provider.dart';

enum Filter { nonVeg, veg, dessert, soup }

class FiltersNotifier extends StateNotifier<Map<Filter, bool>> {
  FiltersNotifier()
    : super({
        Filter.nonVeg: false,
        Filter.veg: false,
        Filter.dessert: false,
        Filter.soup: false,
      });

  void setFilters(Map<Filter, bool> availableFilters) {
    state = availableFilters;
  }

  void setFilter(Filter filter, bool isActive) {
    state = {...state, filter: isActive};
  }
}

final filtersProvider =
    StateNotifierProvider<FiltersNotifier, Map<Filter, bool>>((ref) {
      return FiltersNotifier();
    });

final filteredMealsProvider = Provider((ref) {
  final meals = ref.watch(mealsProvider);
  final activeFilters = ref.watch(filtersProvider);
  
  return meals.where((meal) {
    if (activeFilters[Filter.nonVeg]! &&
        !meal.labels.contains('Non-Vegetarian')) {
      return false;
    }
    if (activeFilters[Filter.veg]! && !meal.labels.contains('Vegetarian')) {
      return false;
    }
    if (activeFilters[Filter.dessert]! && !meal.labels.contains('Dessert')) {
      return false;
    }
    if (activeFilters[Filter.soup]! && !meal.labels.contains('Soup')) {
      return false;
    }
    return true;
  }).toList();
});
