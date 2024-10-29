import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'RecovaryScreen.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  bool isButtonEnabled = false;
  bool clrButton = false;
  TextEditingController emailContoloer = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Text(
                'Forgot Password',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 33),
              ),
              SizedBox(height: 20),
              Text(
                'Please enter your email and   message to reset your password.',
              ),
              SizedBox(height: 50),
              TextFormField(
                controller: emailContoloer,
                onChanged: (value) {
                  setState(() {

                    clrButton = true;
                    isButtonEnabled = value.isNotEmpty;
                  });
                },
                decoration: InputDecoration(
                  suffixIcon: IconButton(onPressed: (){
                    emailContoloer.clear();
                  }, icon: Icon(CupertinoIcons.multiply)),
                  label: Text('Email'),
                  hintText: 'Enter your email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                  ),
                ),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                style: ElevatedButton.styleFrom(minimumSize: Size(400, 60),
                backgroundColor: Colors.blue),
                onPressed: isButtonEnabled ? () {
                         Get.to(RecovaryScreesns());
                  // Action for the button
                } : null,
                child: Text(' Send Code ? ',style: TextStyle(fontSize: 19,color: Colors.white),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
