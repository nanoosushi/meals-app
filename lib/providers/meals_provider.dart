import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/data/dummy_data.dart';

// this is not required because dummyMeals can be accessed via every file anyway
// just to learn basics of how to use riverpod provider
final mealsProvider = Provider((ref) {
  return dummyMeals;
});
