import 'package:flutter/material.dart';
import 'package:meals_flutter_app/Widgets/category_grid_item.dart';
import 'package:meals_flutter_app/data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pick Your category"),
      ),
      body: GridView(
          padding: const EdgeInsets.all(24),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          children: [
            // availableCategories
            //     .map((category) => CategoryGridItem(category: category))
            //     .toList()

            for (final category in availableCategories)
              CategoryGridItem(category: category)
          ]),
    );
  }
}
