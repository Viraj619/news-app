
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/doman/coustoms_page.dart';
import 'package:news_app/ui/bloc/search_bloc/search_bloc.dart';
import 'package:news_app/ui/bloc/search_bloc/search_events.dart';
import 'package:news_app/ui/bloc/search_bloc/search_states.dart';
import 'package:news_app/ui/trend_detail_page.dart';

class SearchPage extends StatelessWidget {
  TextEditingController searchController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    context.read<SearchBloc>().add(GetSearchNews(query:" "));
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_sharp)),
        /// search bar
        title:CoustomContainerSuch(height:50.0 ,width: 300.0,radius:BorderRadius.circular(20),border:Border.all(color: Colors.black),child:
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: TextField(controller:searchController,
                  decoration: InputDecoration(
                    hintText: "Seach News here....",
                    border:InputBorder.none
                  ),
                ),
              ),
            ),
            IconButton(onPressed: (){
              if(searchController.text.isNotEmpty){
                context.read<SearchBloc>().add(GetSearchNews(query:searchController.text.toString()));
              }
            }, icon: Icon(Icons.search)),
          ],
        ),),
      ),
        body:
        BlocBuilder<SearchBloc,SearchStates>(builder:(_,state){
                if(state is LoadedSearchState){
                  var mData= state.sArticlesDataModel;
                  return  ListView.builder(
                    itemCount: mData.articles!.length,
                    itemBuilder: (_,index){
                     return ListTile(
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context) => TrendDetailPage(ArticlesDataModel: mData.articles![index]),));
                       },
                       title:Text(mData.articles![index].title.toString()),
                     trailing: Image.network(mData.articles![index].urlToImage??"no Image"),);
                  });
                }
                return Container();
              })


    );
  }
}