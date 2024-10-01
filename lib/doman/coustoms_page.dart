

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


///  container for Assert image
class CoustomContainerAs extends StatelessWidget{
  var width;
  var height;
  var radius;
  var color;
  AssetImage? img;
  var child;
  CoustomContainerAs({required this.width,required this.height,required this.radius, this.color, this.child,  this.img});
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(image: img!,fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(radius),
        color: color,
      ),
      child: child,
    );
  }
}
///  container for Network image
class CoustomContainer extends StatelessWidget{
  var width;
  var height;
  var radius;
  var color;
  NetworkImage? img;
  var child;
  CoustomContainer({required this.width,required this.height,required this.radius, this.color, this.child,  this.img});
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(image: img!,fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(radius),
        color: color,
      ),
      child: child,
    );
  }
}
/// ///  container simple
class CoustomContainerSuch extends StatelessWidget{
  var width;
  var height;
  var radius;
  var border;
  var color;
  var child;
  CoustomContainerSuch({required this.width,required this.height, this.radius, this.color, this.child,this.border});
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: radius,
        border:border ,
        color: color,
      ),
      child: child,
    );
  }
}
/// row for news and image
class RowCoustomer extends StatelessWidget{
  AssetImage? img;
  var child;
  RowCoustomer({required this.img,required this.child});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(width: 200,height: 100,child:child,),
        Container(width:130,height:80,decoration: BoxDecoration(
          image: DecorationImage(image: img!,fit: BoxFit.cover),
        ),)
      ],);
  }
}

/// button and  divider
class CoustomDivider extends StatelessWidget{
  var child;
  var engIndent;
  var indent;
  var color;
  CoustomDivider({required this.child,required this.engIndent,required this.indent,this.color});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        TextButton(onPressed: (){}, child: child),
        Divider(height: 0,thickness: 5,endIndent:engIndent,indent:indent,color:color,),
      ],),
    );
  }
}
class DividerLine extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Divider(height: 10,color: Colors.black,thickness: 2,indent: 50,);
  }
}
