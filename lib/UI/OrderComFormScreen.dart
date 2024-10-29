import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nikeshope/UI/Paymetn_mathousd.dart';
import 'package:nikeshope/UI/Shoping_Address.dart';

import 'CostomWidgets/Continers_button_modes.dart';
import 'OrderSeccussFull.dart';

class  OrderComFormScreen extends StatefulWidget {
  const  OrderComFormScreen({super.key});

  @override
  State<OrderComFormScreen> createState() => _OrderComFormScreenState();
}

class _OrderComFormScreenState extends State<OrderComFormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' OrderComForm'),
        centerTitle: true,
        backgroundColor: Colors.white70,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(20),
          child: Column(

            children: [
              SizedBox(height: 20,),
              Text('Shoping Address ',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
              Container(
               padding: EdgeInsets.all(5),
                
                width: MediaQuery.of(context).size.height,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius:  4,
                      spreadRadius: 4,
                    )
                  ],

                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          Text('Order  Info ',style: TextStyle(fontWeight: FontWeight.bold),),
                          TextButton(onPressed: (){
                            Get.to(Shoping_Address());
                          }, child: Text('Change',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),
                          ),
                          ),

                        ],

                      ),
                      Text(' Bangladesh  Dhak F Black  Badda '),
                      Text(' Home NO  39 Road no 4 Right  '),
                      Text(' Phone Number 01726172694'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text(' Payment Method ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                  TextButton(onPressed: (){
                    Get.to(PaymentMethod());
                  }, child: Text('Change',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 16),
                  ),
                  ),

                ],

              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 90,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 4,
                          spreadRadius: 4
                        )
                      ],
                      borderRadius: BorderRadius.circular(11)
                    ),
                    child: Image.asset('assets/paypal-logo-0.png'),
                  ),
                  Text('         **** *** **** *** 258871'),
                  SizedBox(height: 4,),

                ],
              ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text(' Delevary Method ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),



                ],

              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                    height: 70,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 4,
                              spreadRadius: 4
                          )
                        ],
                        borderRadius: BorderRadius.circular(11)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/fedxdevelory.png'),
                        Text('7-10 : days '),

                      ],
                    ),
                  ),
                  SizedBox(width: 50,),
                  Container(
                    height: 70,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 4,
                              spreadRadius: 4
                          )
                        ],
                        borderRadius: BorderRadius.circular(11)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/deverlay3.png',height: 50,width: 50,),
                        Text(' Fast Dalavry  '),

                      ],
                    ),
                  ),


                ],
              ),
              SizedBox(height: 50,),
              InkWell(
                onTap: (){
                  Get.to(OrderSeccussFull());
                },
                child: ContinerButtonMudelsScreen(
                  continerwidth: MediaQuery.of(context).size.width, itex: 'Conform Order ',
bgColors: Colors.blue,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
