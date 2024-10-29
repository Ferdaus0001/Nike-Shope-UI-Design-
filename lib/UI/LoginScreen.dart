import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:nikeshope/NikeHomeScreen.dart';
import 'package:nikeshope/UI/SingupScreen.dart';

import 'ForgetPassword.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return  Material(
      child: SingleChildScrollView(
        child: SafeArea(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/undraw_undraw_applications_vaxx_(1)_p5j1.png',height: 200,width: 200,),

            Form(child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        label: Text('Email '),
                        suffixIcon: Icon(Icons.alternate_email),
                        hintText: 'Enter You Email Sir ',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        )
                    ),
                  ),
                  SizedBox(height: 16,),
                  TextFormField(
                    keyboardType: TextInputType.none,
                    decoration: InputDecoration(
                        label: Text('Password  '),
                        suffixIcon: Icon(Icons.lock_outline),
                        hintText: 'Enter You Password Sir ',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                        )
                    ),
                  ),
                  SizedBox(height: 8,),
                  Align(child: TextButton(onPressed: (){
                    Get.to(ForgetPassword());
                  }, child: Text('Forget Password',style: TextStyle(color: Colors.blue),)),
                    alignment: Alignment.bottomRight,
                  ),
                  SizedBox(height: 50,),
              ElevatedButton(onPressed: (){
                Get.off(NikeHomeScreens());
              }, child: Text(' Login ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                style: ElevatedButton.styleFrom(minimumSize: Size(470, 60),
                  backgroundColor: Colors.blue,

                ),

              ),
                  SizedBox(height: 16,),
                  Text('__OR__ ',style: TextStyle(fontWeight: FontWeight.bold),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Dont Have a accunt '),
                      TextButton(onPressed: (){
                        Get.to(SingupScreen());
                      }, child: Text('Sing up ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),)),
                    ],
                  )
                ],
              ),
            ))
          ],
        )),
      )

    );
  }
}