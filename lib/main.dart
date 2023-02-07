
import 'package:flutter/material.dart';
import 'package:trading_app/Home.dart';
import 'package:trading_app/about.dart';
import 'package:trading_app/candle_stick.dart';

void main() {
  runApp(MaterialApp(
  initialRoute: '/home',
   routes: {
    '/home':(context)=>Home(),
    '/about':(context)=>About(),
     '/candle':(context)=>Candle_stick(),
   },
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        backgroundColor: Colors.black,
          primaryColor: Color(0xff1023c2),
        textTheme: TextTheme(
          headline1:TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
          bodyText1: TextStyle(color: Colors.white,fontSize: 16),
          bodyText2: TextStyle(color: Colors.grey.shade800,fontSize: 15)
        )
        )
  ));

}

