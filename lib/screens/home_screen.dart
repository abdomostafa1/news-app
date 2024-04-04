import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app_ui_setup/widgets/category_listview.dart';
import 'package:news_app_ui_setup/widgets/news_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                style: TextStyle(
                    color: Colors.yellow, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        body:  CustomScrollView(
          physics: RangeMaintainingScrollPhysics(),
          slivers: [
            const SliverToBoxAdapter(child: CategoryListView()),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            SliverList.builder(itemCount: 10, itemBuilder: (context, index) {
              return const NewsItem();
            })
          ],
        )

        );
  }
}
