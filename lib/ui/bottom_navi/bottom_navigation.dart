import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'home/tabbar_page_.dart';

class BottomNavigation extends StatefulWidget{
  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedIndex=0;

  List<Widget>listNavigat=[
    TabBarPage(),
    Center(child: Text("reels"),),
    Center(child: Text("Live"),),
    Center(child: Text("PodCast"),),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:listNavigat[selectedIndex] ,
      bottomNavigationBar:NavigationBar(
         indicatorShape: ShapeBorder.lerp(CircleBorder(), CircleBorder(), BorderSide.strokeAlignOutside),
        indicatorColor:Colors.transparent,
        backgroundColor:Colors.blue.shade300,

        destinations: [
          NavigationDestination(icon:Icon(Icons.home_outlined),label:"Home",selectedIcon:(
              Container(
            width:50,
            height:50,
            decoration:BoxDecoration(
              borderRadius:BorderRadius.circular(100),
                gradient:LinearGradient(colors:[
                  Colors.blue.shade200,
                  Colors.white
                ])
            ),
            child:Center(child:Icon(Icons.home_outlined,size:30,color:Colors.blue.shade600,),),
          )),),
          NavigationDestination(icon:Icon(Icons.video_library_outlined), label:"News Reel",selectedIcon:(Container(
            width:50,
            height:50,
            decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(100),
                gradient:LinearGradient(colors:[
                  Colors.blue.shade200,
                  Colors.white
                ])
            ),
            child:Center(child:Icon(Icons.video_library_outlined,size:30,color:Colors.blue.shade600,),),
          ))),
          NavigationDestination(icon:Icon(Icons.live_tv_outlined), label:"Live",selectedIcon:(Container(
            width:50,
            height:50,
            decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(100),
                gradient:LinearGradient(colors:[
                  Colors.blue.shade200,
                  Colors.white
                ])
            ),
            child:Center(child:Icon(Icons.live_tv_outlined,size:30,color:Colors.blue.shade600,),),
          ))),
          NavigationDestination(icon:Icon(Icons.mic), label:"podCast",selectedIcon:(Container(
            width:50,
            height:50,
            decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(100),
                gradient:LinearGradient(colors:[
                  Colors.blue.shade200,
                  Colors.white
                ])
            ),
            child:Center(child:Icon(Icons.mic,size:30,color:Colors.blue.shade600,),),
          ))),
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