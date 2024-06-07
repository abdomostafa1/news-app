import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_ui_setup/widgets/news_listview.dart';

import '../cubits/news_cubit/news_cubit.dart';

class NewsListViewBuilder extends StatelessWidget {
  const NewsListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCubit, NewsState>(builder: (context, state) {
      if (state is NewsSuccess) {
        return NewsListView(
            articles: BlocProvider.of<NewsCubit>(context).articles);
      } else if (state is NewsFailure) {
        return SliverFillRemaining(
          child: Center(
            child: Text(state.errorMessage),
          ),
        );
      } else {
        return const SliverFillRemaining(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
      }
    });
  }
}
