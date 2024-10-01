import 'package:flutter/material.dart';
import 'package:news_app/doman/appconstance.dart';
import 'package:news_app/doman/coustoms_page.dart';

class VideoPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(width: double.infinity,
      height: double.infinity,
        child: Column(children: [
          Text("title"),
          /// video
          CoustomContainerAs(width: 380.0, height: 200.0, radius: 0.0,img:AssetImage("asset/images/titlem.jpeg"),),
          Text("desc"),
          SizedBox(height: 20,),
          Expanded(
            child: ListView.builder(
                itemCount: AppConstance.listCrime.length,
                itemBuilder: (_,index){
              return  CoustomContainerSuch(width: 380.0, height:400.0,child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(children: [
                  SizedBox(width: 360,child: Text("gjghlkjfhkjh gdhkl fgihlk dgfhf",textAlign: TextAlign.center,),),
                  CoustomContainerAs(width: 380.0, height: 200.0, radius: 0.0,img:AssetImage(AppConstance.listCrime[index]['img']),),
                  SizedBox(width:400,child: Text(AppConstance.listCrime[index]['desc'],textAlign: TextAlign.start,)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.message)),
                      IconButton(onPressed: (){}, icon: Icon(Icons.message)),
                      IconButton(onPressed: (){}, icon: Icon(Icons.message)),
                      IconButton(onPressed: (){}, icon: Icon(Icons.message)),
                    ],
                  ),

                ],),
              ),);
            }),
          )
        ],),
      ),
    );
  }
}