import 'package:auto_size_text/auto_size_text.dart';
import 'package:bemzaj_store/consts/BemzajColors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';




class AppBarWidgets {
  static getAppBar(String title,bool center,Color color,  BuildContext context) {

    return  AppBar(
          toolbarHeight: 6.5.h,
          centerTitle: center,
          elevation: 0,
          backgroundColor: BemzajColors.appBar,
          title:  AutoSizeText(title,style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),));}
       
  
}