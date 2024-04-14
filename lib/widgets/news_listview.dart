import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/article_model.dart';
import 'news_item.dart';


class NewsListView extends StatelessWidget {

  final List<ArticleModel> articles ;

  const NewsListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: articles.length,
        itemBuilder: (context, index) {
          return NewsItem(article: articles[index]);
        });
  }

}
