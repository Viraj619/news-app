import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:news_app/doman/coustoms_page.dart';
import 'package:news_app/ui/bottom_navi/home/home_page1.dart';
import 'package:news_app/ui/bottom_navi/home/intertentment_page.dart';
import 'package:news_app/ui/bottom_navi/home/navigation_provider.dart';
import 'package:news_app/ui/bottom_navi/home/search_page.dart';
import 'package:news_app/ui/bottom_navi/home/setting_page.dart';
import 'package:news_app/ui/bottom_navi/home/states_page.dart';
import 'package:news_app/ui/bottom_navi/home/theme_provider.dart';
import 'package:news_app/ui/bottom_navi/home/utility_page.dart';
import 'package:news_app/ui/bottom_navi/home/video_page.dart';
import 'package:news_app/ui/bottom_navi/home/web_story_page.dart';
import 'package:provider/provider.dart';

class TabBarPage extends StatefulWidget{
  @override
  State<TabBarPage> createState() => _TabBareState();
}

class _TabBareState extends State<TabBarPage> with SingleTickerProviderStateMixin{
  TextEditingController titleController=TextEditingController();
  TabController? tabController;
  bool value=false;
  int index=0;
  bool isDark=false;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length:6, vsync: this);

  }

  @override
  Widget build(BuildContext context) {
    isDark=Theme.of(context).brightness==Brightness.dark;
    return Consumer<NavigationProvider>(builder:(_,provider,child){
      tabController!.index=provider.getPage();
      return Scaffold(
        appBar:PreferredSize(preferredSize:Size(double.infinity,100), child:Container(
          height:50,
          color:Colors.blue.shade200,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:10),
            child: Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                Text("News App",style:TextStyle(fontSize:20,color:Colors.white),),
                IconButton(onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context) => SearchPage(),));
                    }, icon: Icon(Icons.search,color:Colors.white,)),

              ],
            ),
          ),
        )),
        /// drawer
        drawer: Drawer(
          shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(0)),
          width: 300,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                /// profile
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: CoustomContainerSuch(width: 300.0,color: Colors.indigoAccent.withOpacity(0.5), height:200.0,child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(children: [
                      /// close button
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(onPressed: (){
                            Navigator.pop(context);
                          }, icon:Icon(Icons.close))
                        ],),
                      /// profile
                      Row(children: [
                        CircleAvatar(backgroundImage: NetworkImage("https://images.pexels.com/photos/1043474/pexels-photo-1043474.jpeg?auto=compress&cs=tinysrgb&w=400"),),
                        SizedBox(width: 10,),
                        Column(children: [
                          Text("HI!"),
                          Text("GUEST")
                        ],)
                      ],),
                      /// edit profile and sign in button
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),child: Text("Edit Profile")),
                          SizedBox(width: 10,),
                          ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),child: Text("Sign In"))],)
                    ],),
                  ),),
                ),
                /// theme mode
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Dark Mode"),
                    Switch.adaptive(value:context.watch<ThemeProvider>().getNewValue(), onChanged:(value){
                      context.read<ThemeProvider>().setNewValue(value);
                      setState(() {

                      });
                    }),
                  ],),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CoustomContainerSuch(width: 100.0, height:4.0,color: Colors.green,),
                    SizedBox(width: 1,),
                    CoustomContainerSuch(width: 50.0, height:4.0,color: Colors.green,),
                    SizedBox(width: 1,),
                    CoustomContainerSuch(width: 100.0, height:4.0,color: Colors.green,),
                  ],),
                SizedBox(height: 10,),
                /// download button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(children: [
                      IconButton(onPressed: (){}, icon:Icon(Icons.download_for_offline_outlined,color: Colors.redAccent,)),
                      Text("Offline"),
                    ],),
                    Column(children: [
                      IconButton(onPressed: (){}, icon:Icon(Icons.bookmark,color: Colors.green,)),
                      Text("BookMark"),
                    ],),
                    Column(children: [
                      IconButton(onPressed: (){}, icon:Icon(Icons.notifications,color: Colors.indigo,)),
                      Text("Notification"),
                    ],),
                  ],),
                SizedBox(height: 10,),
                /// home
                InkWell(
                  child: Row(
                    children: [
                      CircleAvatar(backgroundColor: Colors.white,child: Icon(Icons.home,color: Colors.indigo,),),
                      SizedBox(width: 10,),
                      Text("Home")
                    ],
                  ),
                ),
                DividerLine(),
                InkWell(
                  child: Row(
                    children: [
                      CircleAvatar(backgroundColor: Colors.white,child: Icon(Icons.video_library_outlined,color: Colors.indigo,),),
                      SizedBox(width: 10,),
                      Text("Web Stories")
                    ],
                  ),
                ),
                DividerLine(),
                InkWell(
                  child: Row(
                    children: [
                      CircleAvatar(backgroundColor: Colors.white,child: Icon(Icons.live_tv_outlined,color: Colors.indigo,),),
                      SizedBox(width: 10,),
                      Text("Intertentment")
                    ],
                  ),
                ),
                DividerLine(),
                InkWell(
                  child: Row(
                    children: [
                      CircleAvatar(backgroundColor: Colors.white,child: Icon(Icons.wordpress,color: Colors.indigo,),),
                      SizedBox(width: 10,),
                      Text("World")
                    ],
                  ),
                ),
                DividerLine(),
                InkWell(
                  child: Row(
                    children: [
                      CircleAvatar(backgroundColor: Colors.white,child: Icon(Icons.shopping_bag_outlined,color: Colors.indigo,),),
                      SizedBox(width: 10,),
                      Text("Bisness")
                    ],
                  ),
                ),
                DividerLine(),
                InkWell(
                  child: Row(
                    children: [
                      CircleAvatar(backgroundColor: Colors.white,child: Icon(Icons.sports_volleyball_outlined,color: Colors.indigo,),),
                      SizedBox(width: 10,),
                      Text("Sport")
                    ],
                  ),
                ),
                DividerLine(),
                InkWell(
                  child: Row(
                    children: [
                      CircleAvatar(backgroundColor: Colors.white,child: Icon(Icons.receipt_outlined,color: Colors.indigo,),),
                      SizedBox(width: 10,),
                      Text("Religion")
                    ],
                  ),
                ),
                DividerLine(),
                InkWell(
                  child: Row(
                    children: [
                      CircleAvatar(backgroundColor: Colors.white,child: Icon(Icons.biotech_outlined,color: Colors.indigo,),),
                      SizedBox(width: 10,),
                      Text("Technology")
                    ],
                  ),
                ),
                DividerLine(),
                InkWell(
                  child: Row(
                    children: [
                      CircleAvatar(backgroundColor: Colors.white,child: Icon(Icons.cast_for_education,color: Colors.indigo,),),
                      SizedBox(width: 10,),
                      Text("Education")
                    ],
                  ),
                ),
                DividerLine(),
                InkWell(
                  child: Row(
                    children: [
                      CircleAvatar(backgroundColor: Colors.white,child: Icon(Icons.nightlife_outlined,color: Colors.indigo,),),
                      SizedBox(width: 10,),
                      Text("LifeStyle")
                    ],
                  ),
                ),
                DividerLine(),
                InkWell(
                  child: Row(
                    children: [
                      CircleAvatar(backgroundColor: Colors.white,child: Icon(Icons.video_camera_back_outlined,color: Colors.indigo,),),
                      SizedBox(width: 10,),
                      Text("Video")
                    ],
                  ),
                ),
                DividerLine(),
                InkWell(
                  child: Row(
                    children: [
                      CircleAvatar(backgroundColor: Colors.white,child: Icon(Icons.video_library,color: Colors.indigo,),),
                      SizedBox(width: 10,),
                      Text("Reels")
                    ],
                  ),
                ),
                DividerLine(),
                InkWell(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => SettingPage(),));
                  },
                  child: Row(
                    children: [
                      CircleAvatar(backgroundColor: Colors.white,child: Icon(Icons.settings,color: Colors.indigo,),),
                      SizedBox(width: 10,),
                      Text("Setting")
                    ],
                  ),
                ),
                DividerLine(),
                InkWell(
                  child: Row(
                    children: [
                      CircleAvatar(backgroundColor: Colors.white,child: Icon(Icons.help_outline,color: Colors.indigo,),),
                      SizedBox(width: 10,),
                      Text("Hepl")
                    ],
                  ),
                ),
                DividerLine(),
              ],),
            ),
          ),
        ),
        body: Container(width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              /// tab
              Container(height: 50,color:isDark?Colors.white38:Colors.black38,
                child: TabBar(
                    indicatorPadding: EdgeInsets.all(2),
                    controller:tabController,
                     indicatorSize:TabBarIndicatorSize.tab,
                   unselectedLabelStyle:TextStyle(fontSize:18,color:Colors.white),
                   indicator:BoxDecoration(
                     borderRadius:BorderRadius.circular(5),
                     gradient:LinearGradient(colors:[Colors.blue.shade200,Colors.white])
                   ),
                    isScrollable: true,
                    tabAlignment:TabAlignment.start,
                    tabs: [
                      Tab(text: "Home",),
                      Tab(text:"Intertentment"),
                      Tab(text:"Super Hit New"),
                      Tab(text:"States"),
                      Tab(text:"Life Style"),
                      Tab(text:"Videos")
                    ]),
              ),
              ///  tabview
              Expanded(
                child: TabBarView(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    controller:tabController,
                    children: [
                      HomePageO(),
                      IntertentmentPage(),
                      UtilityPage(),
                      StatesPage(),
                      WebStoryPage(),
                      VideoPage(),
                    ]),
              )
            ],),),
      );
    });
  }
}