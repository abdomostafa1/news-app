import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/screens/home_screen.dart';
import 'package:news_app_ui_setup/widgets/category_card.dart';

void main() {
  runApp( NewsApp());
}

class NewsApp extends StatelessWidget {
   NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

