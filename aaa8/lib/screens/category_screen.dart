import 'package:aaa8/Widget/app_data.dart';
import 'package:aaa8/Widget/category_item.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});
  //const CategoryScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 7 / 8,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10),
      children: CategoryData.map(
        (categoryData) => CategoryItem(
            categoryData.id, categoryData.title, categoryData.imageUrl),
      ).toList(),
    );
  }
}
