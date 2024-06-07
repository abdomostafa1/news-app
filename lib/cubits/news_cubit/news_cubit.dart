import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:news_app_ui_setup/network/news_service.dart';

import '../../models/article_model.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit(this.newsService) : super(NewsLoading()){
    getNews(category: 'general');
  }

  List<ArticleModel> articles=[];

  final NewsService newsService;
  getNews({required String category}) async {

    emit(NewsLoading());
    try {
      articles = await newsService.getNews(category);
      emit(NewsSuccess());
    }
    catch (e){
      emit(NewsFailure(e.toString()));
    }
  }
}
