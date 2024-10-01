import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/ui/tabbar_page_.dart';
import 'package:news_app/ui/video_page.dart';

class BottomNavigation extends StatefulWidget{
  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedIndex=0;

  List<Widget>listNavigat=[
    TabBarPage(),
    Center(child: Text("reels"),),
     VideoPage(),
    Center(child: Text("Live"),),
    Center(child: Text("PodCast"),),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:listNavigat[selectedIndex] ,
      bottomNavigationBar:NavigationBar(
        indicatorShape: ShapeBorder.lerp(CircleBorder(), CircleBorder(), BorderSide.strokeAlignOutside),
        destinations: [
          NavigationDestination(icon:Icon(Icons.home_outlined), label:"Home",selectedIcon:(Icon(Icons.home_outlined,color: Colors.red,)),),
          NavigationDestination(icon:Icon(Icons.video_library_outlined), label:"News Reel",selectedIcon:(Icon(Icons.video_library_outlined,color: Colors.red,))),
          NavigationDestination(icon:Icon(Icons.ondemand_video_outlined), label:"Videos",selectedIcon:(Icon(Icons.ondemand_video_outlined,color: Colors.red,))),
          NavigationDestination(icon:Icon(Icons.live_tv_outlined), label:"Live",selectedIcon:(Icon(Icons.live_tv_outlined,color: Colors.red,))),
          NavigationDestination(icon:Icon(Icons.mic), label:"podCast",selectedIcon:(Icon(Icons.mic,color: Colors.red,))),
        ],
        selectedIndex: selectedIndex,
        onDestinationSelected: (value){
          selectedIndex=value;
          setState(() {

          });
        },
      )
    );
  }
}