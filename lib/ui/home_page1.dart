
import 'package:flutter/material.dart';
import 'package:news_app/doman/appconstance.dart';
import 'package:news_app/doman/coustoms_page.dart';
import 'package:news_app/ui/trend_detail_page.dart';

class HomePageO extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height:double.infinity,
        child:SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
                CoustomContainerAs(width: 380.0, height: 200.0, radius: 0.0,img: AssetImage("asset/images/titlem.jpeg"),),
              SizedBox(height: 10,),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount:AppConstance.desc.length,
                  itemBuilder: (_,childIndex){
                    return  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RowCoustomer(child: Text(AppConstance.desc[childIndex]['desc']),img:AssetImage(AppConstance.desc[childIndex]['img']) ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [Text("News"),SizedBox(width: 30,), Text("."),SizedBox(width: 30,),Text("time")],),
                          ),
                          Divider(height: 10,thickness: 1,endIndent: 10,indent: 10,),

                        ],
                      ),
                    );
                  }),
              SizedBox(height: 12,),

              /// banner of news
              SizedBox(height: 200,
                child: ListView.builder(itemCount: 5,scrollDirection: Axis.horizontal,itemBuilder:(_,index){return  CoustomContainerAs(width: 380.0, height: 200.0, radius: 0.0,img: AssetImage(AppConstance.listsuper[index]['img']),);

                }),
              ),

              /// Intertentment show
              CoustomDivider(child: Text("Intertentment"), engIndent: 250.0, indent: 10.0,color: Colors.pink,),
              SizedBox(height: 10,),
              CoustomContainerAs(width: 380.0, height: 200.0, radius: 0.0,img: AssetImage("asset/images/titlei.jpeg"),),
              SizedBox(height: 10,),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount:AppConstance.listInter.length,
                  itemBuilder: (_,childIndex){
                    return  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                              onTap: (){
                                Navigator.push(context,MaterialPageRoute(builder:(context) => TrendDetailPage(dIndex: childIndex,),));
                              },
                              child: RowCoustomer(child: Text(AppConstance.listInter[childIndex]['desc'],textAlign: TextAlign.start),img:AssetImage(AppConstance.listInter[childIndex]['img']) )),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [Text("News"),SizedBox(width: 30,), Text("."),SizedBox(width: 30,),Text("time")],),
                          ),
                          Divider(height: 10,thickness: 1,endIndent: 10,indent: 10,),

                        ],
                      ),
                    );
                  }),
              Center(child: ElevatedButton(onPressed: (){
              },style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),child:Text("Intertentment")),),

              /// top videos
              SizedBox(height: 300,
                child: Column(
                  children: [
                Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(child: CoustomDivider(child: Text("Top Videos"), engIndent: 180.0, indent: 10.0,color: Colors.pink,)),
                      ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),child:Text("More"))
                    ],),
                    SizedBox(height: 10,),
                    Expanded(
                      child: ListView.builder(itemCount: AppConstance.listsuper.length,scrollDirection: Axis.horizontal,itemBuilder:(_,index){return  CoustomContainerAs(width: 380.0, height: 200.0, radius: 0.0,img: AssetImage(AppConstance.listsuper[index]['img']),);

                      }),
                    ),
                  ],
                ),
              ),
              /// super hit news
              CoustomDivider(child: Text("Super hit new"), engIndent: 250.0, indent: 10.0,color: Colors.blue,),
              SizedBox(height: 10,),
              CoustomContainerAs(width: 380.0, height: 200.0, radius: 0.0,img: AssetImage("asset/images/titlem.jpeg"),),
              SizedBox(height: 10,),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount:AppConstance.listsuper.length,
                  itemBuilder: (_,childIndex){
                    return  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RowCoustomer(child: SizedBox(width: 100,height: 100,child: Text(AppConstance.listsuper[childIndex]['desc'],textAlign: TextAlign.start)),img:AssetImage(AppConstance.listsuper[childIndex]['img']) ),


                        ],
                      ),
                    );
                  }),

              /// states news
              CoustomDivider(child: Text("States News"), engIndent: 250.0, indent: 10.0),
              SizedBox(height: 20,),
              CoustomContainerSuch(width: 350.0, height: 500.0,color:Colors.blue.withOpacity(0.1),border: Border.all(width: 5.0,strokeAlign: BorderSide.strokeAlignOutside,color:Colors.blue),child: Column(children: [
             SizedBox(
            height: 50,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: AppConstance.state.length,
                itemBuilder: (_,index){
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal:1.0),
                    child: ElevatedButton(onPressed: (){},style:ElevatedButton.styleFrom(backgroundColor: Colors.red,), child: Text(AppConstance.state[index])),
                  );
                }),
                    ),
                 SizedBox(height: 10,),
            Expanded(
              child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount:AppConstance.listState.length,
                    itemBuilder: (_,childIndex){
                      return  Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0,),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: RowCoustomer(child: Text(AppConstance.listState[childIndex]['desc']),img:AssetImage(AppConstance.listState[childIndex]['img']) ),
                  ),
                  Divider(height: 10,thickness: 1,endIndent: 10,indent: 10,),

                ],
              ),
                      );
                    }),
            ),
                Center(child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),child:Text("More News")),),

              ],),),         // /// state news


              /// life style news
              CoustomDivider(child: Text("Life style news"), engIndent:240.0,indent: 10.0,color: Colors.blue,),
              SizedBox(height: 10,),
              CoustomContainerAs(width:380.0, height: 200.0, radius: 0.0,img: AssetImage("asset/images/title_life.jpeg"),),
              SizedBox(height: 10,),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount:AppConstance.listLife.length,
                  itemBuilder: (_,childIndex){
                    return  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RowCoustomer(child: Text(AppConstance.listLife[childIndex]['desc']),img:AssetImage(AppConstance.listLife[childIndex]['img']) ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [Text("News"),SizedBox(width: 30,), Text("."),SizedBox(width: 30,),Text("time")],),
                          ),
                          Divider(height: 10,thickness: 1,endIndent: 10,indent: 10,),

                        ],
                      ),
                    );
                  }),
              Center(child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor:Colors.blue),child:Text("Life Style News,")),),


              /// religion
              CoustomDivider(child: Text("Religion"), engIndent:280.0, indent: 10.0,color: Colors.yellow,),
              SizedBox(height: 10,),
              CoustomContainerAs(width:380.0, height: 200.0, radius: 0.0,img: AssetImage("asset/images/title_religion_.jpeg"),),
              SizedBox(height: 10,),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount:AppConstance.listReligion.length,
                  itemBuilder: (_,childIndex){
                    return  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RowCoustomer(child: Text(AppConstance.listReligion[childIndex]['desc']),img:AssetImage(AppConstance.listReligion[childIndex]['img']) ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [Text("News"),SizedBox(width: 30,), Text("."),SizedBox(width: 30,),Text("time")],),
                          ),
                          Divider(height: 10,thickness: 1,endIndent: 10,indent: 10,),

                        ],
                      ),
                    );
                  }),
              Center(child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),child:Text("More News")),),

              /// sports
              CoustomDivider(child: Text("Sports"), engIndent:290.0, indent: 10.0,color: Colors.green,),
              SizedBox(height: 20,),
              CoustomContainerSuch(width: 350.0, height: 500.0,border: Border.all(color: Colors.green,width: 5,strokeAlign: BorderSide.strokeAlignOutside),child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Column(children: [
                  CoustomContainerAs(width: 340.0, height: 150.0, radius: 0.0,img: AssetImage("asset/images/title_sport_.jpeg"),),
                   Divider(height: 10,thickness: 1,endIndent: 10,indent: 10,),
                  Expanded(
                    child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount:AppConstance.listSort.length,
                        itemBuilder: (_,childIndex){
                          return  Padding(
                            padding: const EdgeInsets.symmetric(vertical: 0.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                RowCoustomer(child: Text(AppConstance.listSort[childIndex]['desc']),img:AssetImage(AppConstance.listSort[childIndex]['img']) ),
                                Divider(height: 1,thickness: 1,endIndent: 10,indent: 10,),

                              ],
                            ),
                          );
                        }),
                  ),
                  Center(child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: Colors.green),child:Text("More News")),),
                ],),
              ),),

              /// business
              CoustomDivider(child: Text("Business "), engIndent:270.0, indent: 10.0,color: Colors.indigo,),
              SizedBox(height: 10,),
              CoustomContainerAs(width: 380.0, height: 200.0, radius: 0.0,img: AssetImage("asset/images/b_title.jpeg"),),
              SizedBox(height: 10,),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount:AppConstance.listBusiness.length,
                  itemBuilder: (_,childIndex){
                    return  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RowCoustomer(child: Text(AppConstance.listBusiness[childIndex]['desc']),img:AssetImage(AppConstance.listBusiness[childIndex]['img']) ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [Text("News"),SizedBox(width: 30,), Text("."),SizedBox(width: 30,),Text("time")],),
                          ),
                          Divider(height: 10,thickness: 1,endIndent: 10,indent: 10,),

                        ],
                      ),
                    );
                  }),
              Center(child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo),child:Text("Business")),),

              /// technology
              CoustomDivider(child: Text("Technology"), engIndent:260.0, indent: 10.0,color: Colors.blue,),
              SizedBox(height: 10,),
              CoustomContainerAs(width: 380.0, height: 200.0, radius: 0.0,img: AssetImage("asset/images/title_tech_.jpeg"),),
              SizedBox(height: 10,),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount:AppConstance.listTech.length,
                  itemBuilder: (_,childIndex){
                    return  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RowCoustomer(child: Text(AppConstance.listTech[childIndex]['desc']),img:AssetImage(AppConstance.listTech[childIndex]['img']) ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [Text("News"),SizedBox(width: 30,), Text("."),SizedBox(width: 30,),Text("time")],),
                          ),
                          Divider(height: 10,thickness: 1,endIndent: 10,indent: 10,),

                        ],
                      ),
                    );
                  }),
              Center(child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),child:Text("Technology")),),

              /// crime
              CoustomDivider(child: Text("Crime News"), engIndent:260.0, indent: 10.0,color: Colors.grey,),
              SizedBox(height: 10,),
              CoustomContainerAs(width:380.0, height: 200.0, radius: 0.0,img: AssetImage("asset/images/title_crime_.jpeg"),),
              SizedBox(height: 10,),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount:AppConstance.listCrime.length,
                  itemBuilder: (_,childIndex){
                    return  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RowCoustomer(child: Text(AppConstance.listCrime[childIndex]['desc']),img:AssetImage(AppConstance.listCrime[childIndex]['img']) ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [Text("News"),SizedBox(width: 30,), Text("."),SizedBox(width: 30,),Text("time")],),
                          ),
                          Divider(height: 10,thickness: 1,endIndent: 10,indent: 10,),

                        ],
                      ),
                    );
                  }),
              Center(child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),child:Text("More News")),),

              /// education
              CoustomDivider(child: Text("Education News"), engIndent:240.0, indent: 10.0,color: Colors.indigo,),
              SizedBox(height: 10,),
              CoustomContainerAs(width: 380.0, height: 200.0, radius: 0.0,img: AssetImage("asset/images/title_edu_.jpeg"),),
              SizedBox(height: 10,),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount:AppConstance.listEdu.length,
                  itemBuilder: (_,childIndex){
                    return  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RowCoustomer(child: Text(AppConstance.listEdu[childIndex]['desc']),img:AssetImage(AppConstance.listEdu[childIndex]['img']) ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [Text("News"),SizedBox(width: 30,), Text("."),SizedBox(width: 30,),Text("time")],),
                          ),
                          Divider(height: 10,thickness: 1,endIndent: 10,indent: 10,),

                        ],
                      ),
                    );
                  }),
              Center(child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo),child:Text("More News")),),

              /// world
              CoustomDivider(child: Text("World News"), engIndent:260.0,indent: 10.0,color: Colors.blue,),
              SizedBox(height: 10,),
              CoustomContainerAs(width: 380.0, height: 200.0, radius: 0.0,img: AssetImage("asset/images/title_wold_.jpeg"),),
              SizedBox(height: 10,),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount:AppConstance.listWorld.length,
                  itemBuilder: (_,childIndex){
                    return  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RowCoustomer(child: Text(AppConstance.listWorld[childIndex]['desc']),img:AssetImage(AppConstance.listWorld[childIndex]['img']) ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [Text("News"),SizedBox(width: 30,), Text("."),SizedBox(width: 30,),Text("time")],),
                          ),
                          Divider(height: 10,thickness: 1,endIndent: 10,indent: 10,),

                        ],
                      ),
                    );
                  }),
              Center(child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),child:Text("More News")),),

              /// science
              CoustomDivider(child: Text("Science News"), engIndent:250.0, indent: 10.0,color:Colors.indigo,),
              SizedBox(height: 10,),
              CoustomContainerAs(width: 380.0, height: 200.0, radius: 0.0,img: AssetImage("asset/images/title_sci_.jpeg"),),
              SizedBox(height: 10,),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount:AppConstance.listSci.length,
                  itemBuilder: (_,childIndex){
                    return  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RowCoustomer(child: Text(AppConstance.listSci[childIndex]['desc']),img:AssetImage(AppConstance.listSci[childIndex]['img']) ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [Text("News"),SizedBox(width: 30,), Text("."),SizedBox(width: 30,),Text("time")],),
                          ),
                          Divider(height: 10,thickness: 1,endIndent: 10,indent: 10,),

                        ],
                      ),
                    );
                  }),
              Center(child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo),child:Text("More News")),),

              /// defence
              CoustomDivider(child: Text("Defence News"), engIndent: 250.0, indent: 10.0,color: Colors.blueAccent,),
              SizedBox(height: 10,),
              CoustomContainerAs(width: 380.0, height: 200.0, radius: 0.0,img: AssetImage("asset/images/title_defence_.jpeg"),),
              SizedBox(height: 10,),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount:AppConstance.listDefence.length,
                  itemBuilder: (_,childIndex){
                    return  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RowCoustomer(child: Text(AppConstance.listDefence[childIndex]['desc']),img:AssetImage(AppConstance.listDefence[childIndex]['img']) ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [Text("News"),SizedBox(width: 30,), Text("."),SizedBox(width: 30,),Text("time")],),
                          ),
                          Divider(height: 10,thickness: 1,endIndent: 10,indent: 10,),

                        ],
                      ),
                    );
                  }),
              Center(child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),child:Text("More News")),),

              /// health
              CoustomDivider(child: Text("Health News"), engIndent:250.0, indent: 10.0,color: Colors.greenAccent,),
              SizedBox(height: 10,),
              CoustomContainerAs(width: 380.0, height: 200.0, radius: 0.0,img: AssetImage("asset/images/title_health_.jpeg"),),
              SizedBox(height: 10,),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount:AppConstance.listHealth.length,
                  itemBuilder: (_,childIndex){
                    return  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RowCoustomer(child: Text(AppConstance.listHealth[childIndex]['desc']),img:AssetImage(AppConstance.listHealth[childIndex]['img']) ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [Text("News"),SizedBox(width: 30,), Text("."),SizedBox(width: 30,),Text("time")],),
                          ),
                          Divider(height: 10,thickness: 1,endIndent: 10,indent: 10,),

                        ],
                      ),
                    );
                  }),
              Center(child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: Colors.greenAccent),child:Text("More News")),),

              /// jocks
              CoustomDivider(child: Text("Jocks"), engIndent:300.0, indent: 10.0,color: Colors.deepPurple,),
              SizedBox(height: 10,),
              CoustomContainerAs(width: 380.0, height: 200.0, radius: 0.0,img: AssetImage("asset/images/title_jock_img.jpeg"),),
              SizedBox(height: 10,),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount:AppConstance.listJocks.length,
                  itemBuilder: (_,childIndex){
                    return  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RowCoustomer(child: Text(AppConstance.listJocks[childIndex]['desc']),img:AssetImage(AppConstance.listJocks[childIndex]['img']) ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [Text("News"),SizedBox(width: 30,), Text("."),SizedBox(width: 30,),Text("time")],),
                          ),
                          Divider(height: 10,thickness: 1,endIndent: 10,indent: 10,),

                        ],
                      ),
                    );
                  }),
              Center(child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),child:Text("More News")),),

            ]
            ),
          ),
        ) ,
      ),
    );
  }
}