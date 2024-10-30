import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nikeshope/NikeHomeScreen.dart';

import 'Onebording_Screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds:5), () {
      Get.off(OnebordingScreen());
    });

  }

  @override
  Widget build(BuildContext context) {

     return Material(
       child: Container(
         height: MediaQuery.of(context).size.height,
         width: MediaQuery.of(context).size.height,

       decoration: BoxDecoration(
         color: Colors.black,

         image: DecorationImage(

           fit: BoxFit.cover,
           image: AssetImage('assets/pexels-gabriella-ally-3664539-13733587.jpg'),
           opacity: 0.4,
         ),

       ),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Icon(Icons.shopping_cart_outlined,size: 140,color: Colors.orangeAccent,),
             Text("NIKE SHOP ",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.orangeAccent,fontSize: 33),)
           ],
         )
       ),
     );



  }
}
