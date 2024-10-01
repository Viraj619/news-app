import 'package:flutter/material.dart';
import 'package:news_app/doman/appconstance.dart';
import 'package:news_app/doman/coustoms_page.dart';

class TrendDetailPage extends StatelessWidget{
  int dIndex;
  TrendDetailPage({required this.dIndex});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios_outlined)),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.bookmarks_outlined)),
          IconButton(onPressed: (){}, icon: Icon(Icons.volume_up_rounded)),
          IconButton(onPressed: (){}, icon: Icon(Icons.share))
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Column(children: [
            Expanded(
              child: ListView.builder(
                  itemCount: AppConstance.listInter.length,
                  itemBuilder: (_,index){
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    children: [
                      CoustomContainerAs(width: 380.0, height: 200.0, radius: 0.0,img: AssetImage(AppConstance.listInter[index]['img']),),
                      SizedBox(height: 10,),
                      SizedBox(width: 380,height: 200,child: Text(AppConstance.listInter[index]['desc'],),)
                    ],
                  ),
                );
              }),
            )
          ],),
        ),
      ),
    );
  }
}