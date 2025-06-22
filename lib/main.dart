import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/doman/api_helper.dart';
import 'package:news_app/ui/bloc/default_news/news_bloc.dart';
import 'package:news_app/ui/bloc/life%20style%20bloc/life_bloc.dart';
import 'package:news_app/ui/bloc/search_bloc/search_bloc.dart';
import 'package:news_app/ui/bloc/states_bloc/uttar%20pradesh/uttar_Bloc.dart';
import 'package:news_app/ui/bloc/super_hit_bloc/super_hit_bloc.dart';
import 'package:news_app/ui/bottom_navi/bottom_navigation.dart';
import 'package:news_app/ui/bottom_navi/home/navigation_provider.dart';
import 'package:news_app/ui/bottom_navi/home/theme_provider.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MultiProvider(providers:[
    ChangeNotifierProvider(create: (context) => ThemeProvider(),),
    BlocProvider(create: (context) => NewsBloc(apiHelper: ApiHelper()),),
    BlocProvider(create: (context) => SearchBloc(apiHelper: ApiHelper()),),
    BlocProvider(create: (context) => SuperHitBloc(apiHelper: ApiHelper()),),
    BlocProvider(create: (context) => UttarBloc(apiHelper: ApiHelper()),),
    BlocProvider(create: (context) => LifeBloc(apiHelper: ApiHelper()),),
    ChangeNotifierProvider(create: (context) =>NavigationProvider() ,)
  ],child: MainApp()));
}

class MainApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:BottomNavigation(),
      theme: ThemeData(brightness:Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: context.watch<ThemeProvider>().getNewValue()?ThemeMode.dark:ThemeMode.light,
        );
  }
}