

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/doman/coustoms_page.dart';
import 'package:news_app/ui/bloc/life%20style%20bloc/life_bloc.dart';
import 'package:news_app/ui/bloc/life%20style%20bloc/life_style_events.dart';
import 'package:news_app/ui/bloc/life%20style%20bloc/life_style_states.dart';

import 'trend_detail_page.dart';


class UtilityPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    context.read<LifeBloc>().add(GetLifeStyle(query:"life style news"));
    return Scaffold(
        body:BlocBuilder<LifeBloc,LifeStyleStates>(builder: (_,state){
          if(state is LoadingLifeState){
            return Center(child: CircularProgressIndicator(),);
          }
          if(state is LoadedLifeState){
            var mData=state.LarticlesDataModel;
            return ListView.builder(
                itemCount: mData.articles!.length,
                itemBuilder: (_,index){
                  return InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => TrendDetailPage(ArticlesDataModel: mData.articles![index]),));
                      },
                      child: RowCoustomer(child1: Text(mData.articles![index].title??Container().toString()), child2:Image.network(mData.articles![index].urlToImage??"No Image")));
                });
          }
          return Container();
        },)
    );
  }
}