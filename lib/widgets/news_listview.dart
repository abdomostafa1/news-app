import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:news_app_ui_setup/network/news_service.dart';

import 'news_item.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({super.key});

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const NewsItem();
        });
  }

  @override
  void initState()  {
    getGeneralNews();
  }

   void getGeneralNews() async{
    final articles = await NewsService(Dio()).getNews();
  }
}
