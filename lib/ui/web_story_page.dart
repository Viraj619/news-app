import 'package:flutter/material.dart';
import 'package:news_app/doman/coustoms_page.dart';

class WebStoryPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: ListView.builder(itemBuilder: (_,index){
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Card(
              child: CoustomContainer(width: 250.0, height:400.0, radius:10.0,img: NetworkImage("https://images.pexels.com/photos/670720/pexels-photo-670720.jpeg?auto=compress&cs=tinysrgb&w=600"),child: Stack(
                children: [
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: CoustomContainerSuch(width: 400.0, height:100.0,color: Colors.orange.withOpacity(0.1),child: Text("fvdgjhgjhbhjvkkjhgbdjhbjhgjhgdgjhfbv"),)),
                ],
              ),),
            ),
          );

        }),
      ),
    );
  }
}