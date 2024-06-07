import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/news_listview_builder.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key, required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Padding(
      padding: EdgeInsets.only(top: 32),
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          NewsListViewBuilder(),
        ],
      ),
    ));
  }
}
