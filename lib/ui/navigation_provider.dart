
import 'package:flutter/material.dart';

class NavigationProvider extends ChangeNotifier{
  int selectedIndex=0;
  updatePage(int index){
    selectedIndex=index;
    notifyListeners();
  }
  int getPage()=>selectedIndex;
}