import 'package:flutter/material.dart';
import 'package:news_app/doman/coustoms_page.dart';

class UtilityPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (_,index){
            return Column(
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
    );
  }
}