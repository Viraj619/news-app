
import 'package:news_app/models/indian.dart';

abstract class NewsStates{}

class InitialState extends NewsStates{}
class LoadingState extends NewsStates{}
class LoadedState extends  NewsStates{
  ArticlesDataModel mArticlesDataModel;
  LoadedState({required this.mArticlesDataModel});
}
class ErrorState extends NewsStates{
  String error;
  ErrorState({required this.error});
}