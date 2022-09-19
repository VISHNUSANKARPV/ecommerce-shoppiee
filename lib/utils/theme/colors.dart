import 'package:flutter/material.dart';

// var backcolor =  Colors.blue[100];

// var backcolor = Colors.white;
// var textcolor = Colors.black;
// var textcolor2 = Colors.blue;

// var cardColor = Colors.grey.shade300;
abstract class AppColors extends StatelessWidget {
  const AppColors({super.key});

  Color get textcolor => Colors.black;
  Color get textcolor2 => Colors.blue;
 
  Color get cardColor => Colors.grey.shade300;
  Color get backcolor => Colors.white;
}
