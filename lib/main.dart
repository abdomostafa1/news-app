import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_ui_setup/cubits/news_cubit/news_cubit.dart';
import 'package:news_app_ui_setup/network/news_service.dart';
import 'package:news_app_ui_setup/screens/home_screen.dart';
import 'package:news_app_ui_setup/widgets/category_card.dart';

void main() {
  runApp( NewsApp());
}

class NewsApp extends StatelessWidget {
   NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(context) => NewsCubit(NewsService(Dio())),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
