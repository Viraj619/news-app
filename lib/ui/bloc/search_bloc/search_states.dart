import 'package:news_app/models/indian.dart';

abstract class SearchStates{}

class InitialSearchState extends SearchStates{}
class LoadingSearchState extends SearchStates{}
class LoadedSearchState extends  SearchStates{
  ArticlesDataModel sArticlesDataModel;
  LoadedSearchState({required this.sArticlesDataModel});
}
class ErrorSearchState extends SearchStates{
  String error;
  ErrorSearchState({required this.error});
}