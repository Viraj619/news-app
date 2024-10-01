import 'package:flutter/material.dart';
import 'package:news_app/doman/coustoms_page.dart';

class SettingPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    bool value=false;
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting"),
      ),
      body: SizedBox(width: double.infinity,
      height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              CoustomContainerSuch(height: 50.0,width: 300.0,radius: BorderRadius.only(bottomLeft: Radius.circular(10.0),topRight: Radius.circular(10.0)),child: Row(
                children: [
                  Icon(Icons.notifications_active_outlined,color: Colors.red,),
                  SizedBox(width: 10,),
                Text("Notification"),
                  SizedBox(width: 150,),
                  Icon(Icons.navigate_next)
                ],),),
              DividerLine(),
              CoustomContainerSuch(height: 50.0,width: 300.0,radius: BorderRadius.only(bottomLeft: Radius.circular(10.0),topRight: Radius.circular(10.0)),child: Row(
                children: [
                  Icon(Icons.image,color: Colors.red,),
                  SizedBox(width: 10,),
                  Text("Download"),
                  SizedBox(width: 150,),
                  Icon(Icons.navigate_next)
                ],),),
              DividerLine(),
              CoustomContainerSuch(height: 50.0,width: 300.0,radius: BorderRadius.only(bottomLeft: Radius.circular(10.0),topRight: Radius.circular(10.0)),child: Row(
                children: [
                  Icon(Icons.slow_motion_video_outlined,color: Colors.red,),
                  SizedBox(width: 10,),
                  Text("Video auto play"),
                  SizedBox(width: 90,),
                 Switch(value: value, onChanged: (value){})
                ],),),
              DividerLine(),
              CoustomContainerSuch(height: 50.0,width: 300.0,radius: BorderRadius.only(bottomLeft: Radius.circular(10.0),topRight: Radius.circular(10.0)),child: Row(
                children: [
                  Icon(Icons.live_tv_outlined,color: Colors.red,),
                  SizedBox(width: 10,),
                  Text("Live TV auto play"),
                  SizedBox(width: 90,),
                  Switch(value: value, onChanged: (value){})
                ],),),
              DividerLine(),
              CoustomContainerSuch(height: 50.0,width: 300.0,radius: BorderRadius.only(bottomLeft: Radius.circular(10.0),topRight: Radius.circular(10.0)),child: Row(
                children: [
                  Icon(Icons.cleaning_services,color: Colors.red,),
                  SizedBox(width: 10,),
                  Text("Memory Clean"),
                  SizedBox(width: 150,),
                ],),),
              DividerLine(),
              CoustomContainerSuch(height: 50.0,width: 300.0,radius: BorderRadius.only(bottomLeft: Radius.circular(10.0),topRight: Radius.circular(10.0)),child: Row(
                children: [
                  Icon(Icons.people,color: Colors.red,),
                  SizedBox(width: 10,),
                  Text("invitation"),
                  SizedBox(width: 150,),
                ],),),
              DividerLine(),
              CoustomContainerSuch(height: 50.0,width: 300.0,radius: BorderRadius.only(bottomLeft: Radius.circular(10.0),topRight: Radius.circular(10.0)),child: Row(
                children: [
                  Icon(Icons.star_border,color: Colors.red,),
                  SizedBox(width: 10,),
                  Text("Rate"),
                  SizedBox(width: 150,),
                ],),),
              DividerLine(),
              CoustomContainerSuch(height: 50.0,width: 300.0,radius: BorderRadius.only(bottomLeft: Radius.circular(10.0),topRight: Radius.circular(10.0)),child: Row(
                children: [
                  Icon(Icons.share,color: Colors.red,),
                  SizedBox(width: 10,),
                  Text("Share"),
                  SizedBox(width: 150,),
                ],),),
              DividerLine(),
              CoustomContainerSuch(height: 50.0,width: 300.0,radius: BorderRadius.only(bottomLeft: Radius.circular(10.0),topRight: Radius.circular(10.0)),child: Row(
                children: [
                  Icon(Icons.feedback,color: Colors.red,),
                  SizedBox(width: 10,),
                  Text("Feedback"),
                  SizedBox(width: 150,),
                ],),),
              DividerLine(),
              CoustomContainerSuch(height: 50.0,width: 300.0,radius: BorderRadius.only(bottomLeft: Radius.circular(10.0),topRight: Radius.circular(10.0)),child: Row(
                children: [
                  Icon(Icons.phone_android,color: Colors.red,),
                  SizedBox(width: 10,),
                  Text("Version"),
                  SizedBox(width: 150,),

                ],),),
              DividerLine(),
            ],
          ),
        ),
      ),
    );
  }
}