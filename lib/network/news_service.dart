import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:news_app_ui_setup/models/article_model.dart';

import '../local.properties.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getNews(String category) async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=$NEWS_API_KEY');
    Map<String, dynamic> data = response.data;
    List<dynamic> articles = data['articles'];

    List<ArticleModel> articleList = [];
    for (var article in articles) {
      final articleModel=ArticleModel.fromJson(article);
      articleList.add(articleModel);
    }

    return articleList;
  }
}
