import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/widgets/news_listview.dart';

import '../models/article_model.dart';
import '../network/news_service.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key});

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  List<ArticleModel> articles = [];
  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    return
      isLoading ? const SliverFillRemaining(child: Center(child: CircularProgressIndicator()))
        : NewsListView(articles: articles);
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
