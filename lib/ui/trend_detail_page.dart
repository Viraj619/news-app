import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/doman/appconstance.dart';
import 'package:news_app/doman/coustoms_page.dart';
import 'package:news_app/ui/bloc/default_news/news_bloc.dart';
import 'package:news_app/ui/bloc/default_news/news_states.dart';

class TrendDetailPage extends StatelessWidget{
  final ArticlesDataModel;
  TrendDetailPage({required this.ArticlesDataModel});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_outlined)),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.bookmarks_outlined)),
          IconButton(onPressed: (){}, icon: Icon(Icons.volume_up_rounded)),
          IconButton(onPressed: (){}, icon: Icon(Icons.share))
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 380,child: Text(ArticlesDataModel.title??Container().toString()),),
              SizedBox(height: 10,),
              Center(child: CoustomContainer( radius: 0.0,img: NetworkImage(ArticlesDataModel.urlToImage??"No Image"),)),
              SizedBox(height: 10,),
              SizedBox(width: 380,child: Text(ArticlesDataModel.description??Container().toString()),)
            ],
          ),
        )
      ),
    );
  }
}