import 'package:flutter/material.dart';
import 'package:news_app/doman/coustoms_page.dart';

class StatesPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        /// states names
        // SizedBox(
        //   height: 50,
        //   child: ListView.builder(
        //     scrollDirection: Axis.horizontal,
        //       itemCount: 10,
        //       itemBuilder: (_,index){
        //     return Padding(
        //       padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal:1),
        //       child: ElevatedButton(onPressed: (){},style:ElevatedButton.styleFrom(backgroundColor: Colors.red,), child: Text("Delhi")),
        //     );
        //   }),
        // ),
        /// news
        Expanded(
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (_,index){
            return  Column(
              children: [
                RowCoustomer(img: AssetImage("asset/images/title_img.jpg"), child:Text("fbjhbvxvchvvdvjhbjhchgfdvjbhjghvgfhvjbdms vnzvhcgzbxjvb")),
                SizedBox(height: 5,),
                RowCoustomer(img: AssetImage("asset/images/title_img.jpg"), child:Text("fbjhbvxvchvvdvjhbjhchgfdvjbhjghvgfhvjbdms vnzvhcgzbxjvb")),
                SizedBox(height: 5,),
                RowCoustomer(img: AssetImage("asset/images/title_img.jpg"), child:Text("fbjhbvxvchvvdvjhbjhchgfdvjbhjghvgfhvjbdms vnzvhcgzbxjvb")),
                SizedBox(height: 5,),
                RowCoustomer(img: AssetImage("asset/images/title_img.jpg"), child:Text("fbjhbvxvchvvdvjhbjhchgfdvjbhjghvgfhvjbdms vnzvhcgzbxjvb")),
                SizedBox(height: 5,),
                RowCoustomer(img: AssetImage("asset/images/title_img.jpg"), child:Text("fbjhbvxvchvvdvjhbjhchgfdvjbhjghvgfhvjbdms vnzvhcgzbxjvb")),
                SizedBox(height: 5,),
                RowCoustomer(img: AssetImage("asset/images/title_img.jpg"), child:Text("fbjhbvxvchvvdvjhbjhchgfdvjbhjghvgfhvjbdms vnzvhcgzbxjvb")),
                SizedBox(height: 5,),
                RowCoustomer(img: AssetImage("asset/images/title_img.jpg"), child:Text("fbjhbvxvchvvdvjhbjhchgfdvjbhjghvgfhvjbdms vnzvhcgzbxjvb")),
                SizedBox(height: 5,),
                RowCoustomer(img: AssetImage("asset/images/title_img.jpg"), child:Text("fbjhbvxvchvvdvjhbjhchgfdvjbhjghvgfhvjbdms vnzvhcgzbxjvb")),
                SizedBox(height: 5,),
                RowCoustomer(img: AssetImage("asset/images/title_img.jpg"), child:Text("fbjhbvxvchvvdvjhbjhchgfdvjbhjghvgfhvjbdms vnzvhcgzbxjvb")),
                SizedBox(height: 5,),
                RowCoustomer(img: AssetImage("asset/images/title_img.jpg"), child:Text("fbjhbvxvchvvdvjhbjhchgfdvjbhjghvgfhvjbdms vnzvhcgzbxjvb")),
          
          
              ],
            );
          }),
        )
      ],),
    );
  }
}