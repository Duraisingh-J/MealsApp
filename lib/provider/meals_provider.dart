import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mealsapp/data/data.dart';

final mealsProvider = Provider((ref) {
  return availableMeals;
});
