import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/category_model.dart';

class HomeScreen extends StatelessWidget {
    HomeScreen({super.key});

  final List<CategoryModel> categories = [
    const CategoryModel(
        imageAssetUrl: 'assets/business.avif', categoryName: 'Business')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'News',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            Text(
              'Cloud',
              style:
                  TextStyle(color: Colors.yellow, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      body: Column(
        children: [ListView.builder(itemBuilder: (context, index) {})],
      ),
    );
  }
}
