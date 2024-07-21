import 'package:flutter/material.dart';
import 'package:meals_app/data/dummy_data.dart';
import 'package:meals_app/widgets/category_grid_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick Your Category'),
      ),
      body: GridView(
        padding: const EdgeInsetsDirectional.all(20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2, // each grid has width=3, height=2
            crossAxisSpacing: 16,
            mainAxisSpacing: 16),
        children: availableCategories
            .map((category) => CategoryGridItem(category: category))
            .toList(),
        // below is alternative
        // [for (category in availableCategories)
        //  CategoryGridItem(category: category)]
      ),
    );
  }
}
