import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/network/news_service.dart';

import '../models/article_model.dart';
import 'news_item.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({super.key});

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  List<ArticleModel> articles = [];
  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const SliverFillRemaining(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else {
      return SliverList.builder(
          itemCount: articles.length,
          itemBuilder: (context, index) {
            return NewsItem(article: articles[index]);
          });
    }
  }

  @override
  void initState() {
    getGeneralNews();
  }

  void getGeneralNews() async {
    articles = await NewsService(Dio()).getNews();
    isLoading = false;
  }
}
