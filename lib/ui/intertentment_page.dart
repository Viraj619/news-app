
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/doman/coustoms_page.dart';
import 'package:news_app/ui/bloc/default_news/news_bloc.dart';
import 'package:news_app/ui/bloc/default_news/news_events.dart';
import 'package:news_app/ui/bloc/default_news/news_states.dart';
import 'package:news_app/ui/bloc/search_bloc/search_bloc.dart';
import 'package:news_app/ui/bloc/search_bloc/search_events.dart';
import 'package:news_app/ui/bloc/search_bloc/search_states.dart';
import 'package:news_app/ui/trend_detail_page.dart';

class IntertentmentPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    context.read<SearchBloc>().add(GetSearchNews(query:"movies"));
    return Scaffold(
      body:BlocBuilder<SearchBloc,SearchStates>(builder: (_,state){
        if(state is LoadingSearchState){
          return Center(child: CircularProgressIndicator(),);
        }
        if(state is LoadedSearchState){
          var mData=state.sArticlesDataModel;
          return ListView.builder(
              itemCount: mData.articles!.length,
              itemBuilder: (_,index){
            return InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => TrendDetailPage(ArticlesDataModel:mData.articles![index]),));
                },
                child: RowCoustomer(child1: Text(mData.articles![index].title??Container().toString()), child2:Image.network(mData.articles![index].urlToImage??"No Image")));
          });
        }
        return Container();
      },)
    );
  }
}