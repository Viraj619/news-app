
import 'package:news_app/models/indian.dart';

class SourceModel{
  String? id;
  String? name;

  /// constructor
  SourceModel({this.id,this.name});
  /// from Json
 factory SourceModel.fromJson(Map<String,dynamic>json)=>SourceModel(
   id:json['id'],
   name:json['name']
 );
}

class ArticlesModel{
  String? author;
  String? content;
  String? description;
  String? publishedAt;
  SourceModel? source;
  String? title;
  String? url;
  String? urlToImage;

  /// constructor
  ArticlesModel({this.author,this.content,this.description,this.publishedAt,this.source,this.title,this.url,this.urlToImage});
  /// from json
 factory ArticlesModel.fromJson(Map<String,dynamic>json)=>ArticlesModel(
   author: json['author'],
   content: json['content'],
   description: json['description'],
   publishedAt: json['publishedAt'],
   source: SourceModel.fromJson(json['source']),
   title: json['title'],
   url: json['url'],
   urlToImage: json['urlToImage']

 );
}

class ArticlesDataModel{
  int? totalResults;
  String? status;
  List<ArticlesModel>? articles;

  /// constructor
 ArticlesDataModel({this.status,this.totalResults,this.articles});
 /// from Json
 factory ArticlesDataModel.fromJson(Map<String,dynamic>json){
   List<ArticlesModel>mArticlesData=[];
   for(Map<String,dynamic>eachArticle in json['articles']){
     mArticlesData.add(ArticlesModel.fromJson(eachArticle));
   }
   return ArticlesDataModel(
     totalResults: json['totalResults'],
     status: json['status'],
     articles:mArticlesData
   );
 }
}