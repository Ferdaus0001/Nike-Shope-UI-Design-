import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nikeshope/UI/SplashScreen.dart';

import 'NikeHomeScreen.dart';
import 'UI/NavegationsScreen.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavegationsScreen(),
    );
  }

}