import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        height: 85,
        width: 160,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(12),
          image:  DecorationImage(
              image: AssetImage(category.imageAssetUrl),fit: BoxFit.fill),
        ),
        child:  Center(
          child: Text(
            category.categoryName,
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
