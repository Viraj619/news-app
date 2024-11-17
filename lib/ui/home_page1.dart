
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/doman/appconstance.dart';
import 'package:news_app/doman/coustoms_page.dart';
import 'package:news_app/ui/bloc/default_news/news_bloc.dart';
import 'package:news_app/ui/bloc/default_news/news_events.dart';
import 'package:news_app/ui/bloc/default_news/news_states.dart';
import 'package:news_app/ui/bloc/life%20style%20bloc/life_bloc.dart';
import 'package:news_app/ui/bloc/life%20style%20bloc/life_style_events.dart';
import 'package:news_app/ui/bloc/life%20style%20bloc/life_style_states.dart';
import 'package:news_app/ui/bloc/search_bloc/search_bloc.dart';
import 'package:news_app/ui/bloc/search_bloc/search_events.dart';
import 'package:news_app/ui/bloc/search_bloc/search_states.dart';
import 'package:news_app/ui/bloc/states_bloc/uttar%20pradesh/uttar_Bloc.dart';
import 'package:news_app/ui/bloc/states_bloc/uttar%20pradesh/uttar_event.dart';
import 'package:news_app/ui/bloc/states_bloc/uttar%20pradesh/uttar_state.dart';
import 'package:news_app/ui/bloc/super_hit_bloc/super_hit_bloc.dart';
import 'package:news_app/ui/bloc/super_hit_bloc/super_hit_news_event.dart';
import 'package:news_app/ui/bloc/super_hit_bloc/super_hit_states.dart';
import 'package:news_app/ui/navigation_provider.dart';
import 'package:news_app/ui/trend_detail_page.dart';
import 'package:provider/provider.dart';

class HomePageO extends StatefulWidget{
  @override
  State<HomePageO> createState() => _HomePageOState();
}

class _HomePageOState extends State<HomePageO> {

  @override
  void initState() {
    context.read<NewsBloc>().add(GetNews());
    context.read<SearchBloc>().add(GetSearchNews(query: 'movies'));
   context.read<SuperHitBloc>().add(GetSuperHitNews(query:"super hit news"));
   context.read<UttarBloc>().add(GetUttarNews(quiry:"Uttar Pradesh"));
   context.read<LifeBloc>().add(GetLifeStyle(query:"life style news"));
    super.initState();
  }

  /// random news function
  int randomNews(int len){
    return Random().nextInt(len-1);
  }
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Container(
            width: double.infinity,
            height:double.infinity,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  /// random News
                   BlocBuilder<NewsBloc,NewsStates>(builder: (_,state){
                                if(state is LoadingState){
                                  return Center(child:CircularProgressIndicator(),);
                                }
                                if(state is ErrorState){
                                  return Center(child: Text(state.error),);
                                }
                                if(state is LoadedState){
                                   var mNews= state.mArticlesDataModel;
                                   int randomIndex=randomNews(state.mArticlesDataModel.articles!.length);
                                  return Column(
                                    children: [
                                      CoustomContainer(radius:0.0,img: NetworkImage(mNews.articles![randomIndex].urlToImage??"No Image"),),
                                      SizedBox(height: 10,),
                                      ListView.builder(
                                          shrinkWrap: true,
                                          physics: NeverScrollableScrollPhysics(),
                                          itemCount:10,
                                          itemBuilder: (_,index){
                                            var eachData=mNews.articles![index];
                                            return
                                              Column(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        ListTile(
                                                          onTap:(){
                                                            Navigator.push(context, MaterialPageRoute(builder: (context) =>TrendDetailPage(ArticlesDataModel:mNews.articles![index]),));
                                                          },
                                                          title: Text(eachData.title??Container().toString()),
                                                          trailing:Image.network(eachData.urlToImage??"No Image") ,
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets.all(8.0),
                                                          child: Row(children: [Text("News"),SizedBox(width: 30,), Text("."),SizedBox(width: 30,),Text("time")],),
                                                        ),
                                                        Divider(height: 10,thickness: 1,endIndent: 10,indent: 10,),

                                                      ],
                                                    ),
                                                  ),

                                                ],
                                              );
                                          }),
                                    ],
                                  );

                                }


                                return Container();
                              }),
                  SizedBox(height: 12,),

                  /// banner of news
                  SizedBox(height: 200,
                    child: ListView.builder(itemCount: 5,scrollDirection: Axis.horizontal,itemBuilder:(_,index){return  CoustomContainerAs( radius: 0.0,img: AssetImage(AppConstance.listsuper[index]['img']),);

                    }),
                  ),

                  /// Intertentment show
                  Container(),
                  CoustomDivider(child: Text("Intertentment"),color: Colors.pink,),
                  SizedBox(height: 10,),
                  BlocBuilder<SearchBloc,SearchStates>(builder: (_,state){
                    if(state is LoadingSearchState){
                      return Center(child: CircularProgressIndicator(),);
                    }
                    if(state is LoadedSearchState){
                      var mData=state.sArticlesDataModel;
                      int randomIndex=randomNews(state.sArticlesDataModel.articles!.length);
                      return Column(children: [
                        CoustomContainer( radius: 0.0,img: NetworkImage(mData.articles![randomIndex].urlToImage??"No image")),
                        SizedBox(height: 10,),
                        ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount:10,
                            itemBuilder: (_,index){
                               var eachData=mData.articles![index];
                              return  Padding(
                                padding: const EdgeInsets.symmetric(vertical: 8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    InkWell(
                                      onTap: (){
                                        Navigator.push(context,MaterialPageRoute(builder:(context) => TrendDetailPage(ArticlesDataModel: mData.articles![index],),));
                                      },
                                      child:   ListTile(title: Text(eachData.title??Container().toString()),
                                        trailing:Image.network(eachData.urlToImage??"No Image") ,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(children: [Text("News"),SizedBox(width: 30,), Text("."),SizedBox(width: 30,),Text("time")],),
                                    ),
                                    Divider(height: 10,thickness: 1,endIndent: 10,indent: 10,),

                                  ],
                                ),
                              );
                            }),
                      ],);
                    }
                    return Container();
                  }),
                  Center(child: ElevatedButton(onPressed: (){
                    context.read<NavigationProvider>().updatePage(1);
                  },style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),child:Text("Intertentment")),),

                      /// top videos
                      SizedBox(height: 300,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CoustomDivider(child: Text("Top Videos"),color: Colors.pink,),
                                ElevatedButton(onPressed: (){
                                  context.read<NavigationProvider>().updatePage(5);
                                },style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),child:Text("More"))
                              ],),
                            SizedBox(height: 10,),
                            Expanded(
                              child: ListView.builder(itemCount: AppConstance.listsuper.length,scrollDirection: Axis.horizontal,itemBuilder:(_,index){return  CoustomContainerAs( radius: 0.0,img: AssetImage(AppConstance.listsuper[index]['img']),);

                              }),
                            ),
                          ],
                        ),
                      ),
                      /// super hit news
                      CoustomDivider(child: Text("Super hit new"),color: Colors.blue,),
                      SizedBox(height: 10,),
                      BlocBuilder<SuperHitBloc,SuperHitStates>(builder:(_,state){
                        if(state is LoadingSuperHitState){
                          return Center(child: CircularProgressIndicator(),);
                        }
                        if(state is ErrorSuperHitState){
                          return Center(child: Text(state.Error),);
                        }
                        if(state is LoadedSuperHitState){
                          var mData=state.sarticlesDataModel;
                          int randomIndex=randomNews(state.sarticlesDataModel.articles!.length);
                          return Column(children: [
                            CoustomContainer( radius: 0.0,img:NetworkImage(mData.articles![randomIndex].urlToImage??"No Image"),),
                            SizedBox(height: 10,),
                            ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount:10,
                                itemBuilder: (_,index){
                                  return InkWell(
                                      onTap: (){
                                        Navigator.push(context,MaterialPageRoute(builder: (context) => TrendDetailPage(ArticlesDataModel:mData.articles![index] ,),));
                                      },
                                      child: RowCoustomer(child1:Text(mData.articles![index].title??Container().toString(),textAlign: TextAlign.start), child2:Image.network(mData.articles![index].urlToImage??"no Image")));
                                }),
                            ElevatedButton(onPressed:(){
                              context.read<NavigationProvider>().updatePage(2);
                            }, child:Text("Super hit New"))

                          ],);
                        }
                        return Container();
                      }),

                      /// states news
                      BlocBuilder<UttarBloc,UttarState>(builder:(_,state){
                        if(state is LoadedUttarState){
                          var stateNews=state.UarticalDataModel;
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CoustomDivider(child: Text("States News"),color: Colors.blue,),
                              SizedBox(height: 20,),
                              Center(
                                child: CoustomContainerSuch(width: 350.0, height: 500.0,color:Colors.blue.withOpacity(0.1),border: Border.all(width: 5.0,strokeAlign: BorderSide.strokeAlignOutside,color:Colors.blue),child: Column(children: [
                                  SizedBox(
                                    height: 50,
                                    child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: AppConstance.state.length,
                                        itemBuilder: (_,index){
                                          return Padding(
                                            /// state news button
                                            padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal:1.0),
                                            child: ElevatedButton(onPressed: (){},style:ElevatedButton.styleFrom(backgroundColor: Colors.red,), child: Text(AppConstance.state[index])),
                                          );
                                        }),
                                  ),
                                  SizedBox(height: 10,),
                                  Expanded(
                                    child: ListView.builder(
                                        shrinkWrap: true,
                                        physics: NeverScrollableScrollPhysics(),
                                        itemCount:10,
                                        itemBuilder: (_,index){
                                          var eachNews=stateNews.articles![index];
                                          return  ListTile(
                                              onTap: (){
                                                Navigator.push(context, MaterialPageRoute(builder: (context) => TrendDetailPage(ArticlesDataModel: stateNews.articles![index],),));
                                              },
                                              title: Text(eachNews.title??Container().toString()),
                                              trailing:Image.network(eachNews.urlToImage??" No Image"));
                                        }),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom:5.0),
                                    child: Center(child: ElevatedButton(onPressed: (){
                                      context.read<NavigationProvider>().updatePage(3);
                                    },style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),child:Text("More News")),),
                                  ),
                                ],),),
                              ),         // /// state news
                            ],
                          );
                        }
                        return Container();
                      }),

                      /// life style news
                      CoustomDivider(child: Text("Life style news"),color: Colors.blue,),
                      SizedBox(height: 10,),
                      BlocBuilder<LifeBloc,LifeStyleStates>(builder: (_,state){
                        if(state is LoadingLifeState){
                          return Center(child: CircularProgressIndicator(),);
                        }
                        if(state is ErrorLifeState){
                          return Center(child: Text(state.Error),);
                        }
                        if(state is LoadedLifeState){
                          var mLife=state.LarticlesDataModel;
                          int randomIndex=randomNews(state.LarticlesDataModel.articles!.length);
                          return Column(children: [
                            CoustomContainer(radius: 0.0,img: NetworkImage(mLife.articles![randomIndex].urlToImage??""),),
                            SizedBox(height: 10,),
                            ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount:10,
                                itemBuilder: (_,childIndex){
                                  var each=mLife.articles![childIndex];
                                  return  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        ListTile(
                                          onTap:(){
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => TrendDetailPage(ArticlesDataModel: mLife.articles![childIndex],),));
                                          },
                                          title: Text(each.title??Container().toString()),
                                          trailing:Image.network(each.urlToImage??"No Image") ,
                                        ),
                                      ],
                                    ),
                                  );
                                }),
                            Center(child: ElevatedButton(onPressed: (){
                              context.read<NavigationProvider>().updatePage(4);
                            },style: ElevatedButton.styleFrom(backgroundColor:Colors.blue),child:Text("Life Style News,")),),
                          ],);
                        }
                        return Container();
                      }),
                    ]
                ),
              ),
            )
        ),
      );
    }
  }
