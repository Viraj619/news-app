

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


///  container for Assert image
class CoustomContainerAs extends StatelessWidget{
  var radius;
  var color;
  AssetImage? img;
  var child;
  CoustomContainerAs({required this.radius, this.color, this.child,  this.img});
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.of(context).size.width*0.9,
      height: MediaQuery.of(context).orientation==Orientation.portrait?MediaQuery.of(context).size.width*0.4:MediaQuery.of(context).size.width*0.4,
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
  var radius;
  var color;
  NetworkImage? img;
  var child;
  CoustomContainer({required this.radius, this.color, this.child,  this.img});
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.of(context).size.width*0.9,
      height: MediaQuery.of(context).orientation==Orientation.portrait?MediaQuery.of(context).size.width*0.4:MediaQuery.of(context).size.width*0.4,
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
  var child1;
  var child2;
  RowCoustomer({required this.child1,required this.child2});
  @override
  Widget build(BuildContext context) {
    return  ListTile(title: child1,trailing: child2,);


  }
}

/// button and  divider
class CoustomDivider extends StatelessWidget{
  var child;
  var color;
  CoustomDivider({required this.child,this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:BoxDecoration(
          border:Border(bottom: BorderSide(color:color,width: 5))
      ),
      child:child,
    );
  }
}
class DividerLine extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Divider(height: 10,color: Colors.black,thickness: 2,indent: 50,);
  }
}
