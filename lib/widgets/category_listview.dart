import 'package:flutter/cupertino.dart';

import '../models/category_model.dart';
import 'category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  final List<CategoryModel> categories = const [
    CategoryModel(
        imageAssetUrl: 'assets/business.avif', categoryName: 'business'),
    CategoryModel(
        imageAssetUrl: 'assets/entertaiment.avif',
        categoryName: 'entertaiment'),
    CategoryModel(
        imageAssetUrl: 'assets/general.avif', categoryName: 'general'),
    CategoryModel(imageAssetUrl: 'assets/health.avif', categoryName: 'health'),
    CategoryModel(
        imageAssetUrl: 'assets/science.avif', categoryName: 'science'),
    CategoryModel(imageAssetUrl: 'assets/sports.avif', categoryName: 'sports'),
    CategoryModel(
        imageAssetUrl: 'assets/technology.jpeg', categoryName: 'technology'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
