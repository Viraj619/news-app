abstract class SearchEvents{}

/// search news
class GetSearchNews extends SearchEvents{
  String query;
  GetSearchNews({required this.query});
}