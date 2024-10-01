import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
  bool isDark=false;
  void setNewValue(bool newValue){
    isDark=newValue;
    notifyListeners();
  }
  bool getNewValue()=>isDark;
}