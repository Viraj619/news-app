
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/doman/coustoms_page.dart';
import 'package:news_app/ui/bloc/search_bloc/search_events.dart';
import 'package:news_app/ui/bloc/states_bloc/uttar%20pradesh/uttar_Bloc.dart';
import 'package:news_app/ui/bloc/states_bloc/uttar%20pradesh/uttar_event.dart';
import 'package:news_app/ui/bloc/states_bloc/uttar%20pradesh/uttar_state.dart';
import 'package:news_app/ui/bottom_navi/home/trend_detail_page.dart';

class StatesPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    context.read<UttarBloc>().add(GetUttarNews(quiry:"Uttar Pradesh"));
    return Scaffold(
        body:BlocBuilder<UttarBloc,UttarState>(builder: (_,state){
          if(state is LoadingUttarState){
            return Center(child: CircularProgressIndicator(),);
          }
          if(state is LoadedUttarState){
            var mData=state.UarticalDataModel;
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