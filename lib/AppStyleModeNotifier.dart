import 'package:flutter/material.dart';

class AppStyleModeNotifier extends ChangeNotifier{
  int mode = 0; //0 for light and 1 for dark

  Color primaryBackgroundColor = Colors.white;
  Color primaryTextColorDark = Colors.grey[900];
  Color primaryTextColorLight = Colors.grey;
  Color primaryTextColor = Colors.black38;
  Color primaryBoxColor = Colors.blue;
  Color primaryMessageTextColor = Colors.blueGrey;
  Color borderColor = Colors.blueGrey[500];

  switchMode(){

    if(mode == 0){
      //if it is light mode currently switch to dark
      primaryBackgroundColor = Colors.grey[900];
      primaryTextColorDark = Colors.grey[100];
      primaryTextColorLight = Colors.grey;
      primaryTextColor = Colors.grey[300];
      primaryBoxColor = Colors.blue;
      primaryMessageTextColor = Colors.white;
      borderColor = Colors.blueGrey[800];
      mode = 1;
    }
    else{
      //if it is dark mode currently switch to light
      primaryBackgroundColor = Colors.white;
      primaryTextColorDark = Colors.grey[900];
      primaryTextColorLight = Colors.grey;
      primaryTextColor = Colors.black38;
      primaryBoxColor = Colors.blue;
      primaryMessageTextColor = Colors.blueGrey;
      borderColor = Colors.blueGrey[500];
      mode = 0;
    }

    notifyListeners();

  }

}