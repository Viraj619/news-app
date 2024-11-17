 class UrlsPage{
  /// headlines
  static final  String url="https://newsapi.org/v2/top-headlines?country=us&apiKey=8029269c243445838949a0a7f8b95739";
  static final  String urlState="https://newsapi.org/v2/everything?q=states&apiKey=8029269c243445838949a0a7f8b95739";

  static getSearchUrl(String query) => "https://newsapi.org/v2/everything?q=$query&apiKey=8029269c243445838949a0a7f8b95739";

 }