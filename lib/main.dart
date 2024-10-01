import 'package:flutter/material.dart';
import 'package:news_app/ui/bottom_navigation.dart';
import 'package:news_app/ui/election_page.dart';
import 'package:news_app/ui/home_page1.dart';
import 'package:news_app/ui/states_page.dart';
import 'package:news_app/ui/tabbar_page_.dart';
import 'package:news_app/ui/theme_provider.dart';
import 'package:news_app/ui/trend_detail_page.dart';
import 'package:news_app/ui/utility_page.dart';
import 'package:news_app/ui/web_story_page.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: MainApp()));
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