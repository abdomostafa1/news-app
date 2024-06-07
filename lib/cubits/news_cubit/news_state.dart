part of 'news_cubit.dart';

@immutable
sealed class NewsState {}

final class NewsLoading extends NewsState {}
final class NewsSuccess extends NewsState {}
final class NewsFailure extends NewsState {
  NewsFailure(this.errorMessage);
  final String errorMessage;
}
