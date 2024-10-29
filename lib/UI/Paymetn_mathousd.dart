import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'CostomWidgets/Continers_button_modes.dart';
import 'Shoping_Address.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  int _type = 1;

  void _handleRadio(Object? value) {
    setState(() {
      _type = value as int;
    });
  }
@override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
   Size size= MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Method'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(

        child:  Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            children: [
              SizedBox(height: 40,),
              /// Stard  with this
              Container(
                width: size.width,
                margin: EdgeInsets.only(right: 3),
                height: 55,
                decoration: BoxDecoration(
                  border: _type ==1? Border.all(color: Colors.black87,width: 1): Border.all(color: Colors.green,width: 1),
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.transparent,
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Radio(
                            activeColor: Colors.black,
                            value: 1, onChanged:_handleRadio, groupValue: _type,)

                        ],
                        
                      ),
                      Text('Google Pay ',style: _type ==1?TextStyle(fontSize: 19,fontWeight: FontWeight.w700,color: Colors.blue):TextStyle(fontSize: 19,fontWeight: FontWeight.w700,color: Colors.black,
                      )),
                      Image.asset('assets/paypal-logo-0.png',width: 100,height: 100,)
                      ],
                  ),
                ),
              ),
              ///Edn of Row image
              ///one
              ///
              SizedBox(height: 40,),


              ///  two
              Container(
                width: size.width,
                margin: EdgeInsets.only(right: 3),
                height: 55,
                decoration: BoxDecoration(
                  border: _type ==2? Border.all(color: Colors.black87,width: 1): Border.all(color: Colors.green,width: 1),
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.transparent,
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Radio(
                            activeColor: Colors.black,
                            value: 2, onChanged:_handleRadio, groupValue: _type,)

                        ],

                      ),
                      Text('Google Pay ',style: _type ==2?TextStyle(fontSize: 19,fontWeight: FontWeight.w700,color: Colors.blue):TextStyle(fontSize: 19,fontWeight: FontWeight.w700,color: Colors.black,
                      )),
                      Image.asset('assets/Google-Pay-Logo-01.png',width: 100,height: 100,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40,),
              /// Stard  with this throee
              ///
              Container(
                width: size.width,
                margin: EdgeInsets.only(right: 3),
                height: 55,
                decoration: BoxDecoration(
                  border: _type ==3? Border.all(color: Colors.black87,width: 1): Border.all(color: Colors.green,width: 1),
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.transparent,
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Radio(
                            activeColor: Colors.black,
                            value: 3, onChanged:_handleRadio, groupValue: _type,)

                        ],

                      ),
                      Text('Google Pay ',style: _type ==3?TextStyle(fontSize: 19,fontWeight: FontWeight.w700,color: Colors.blue):TextStyle(fontSize: 19,fontWeight: FontWeight.w700,color: Colors.black87,
                      )),
                      Image.asset('assets/1564737713.jpg',width: 100,height: 100,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Container(
                width: size.width,
                margin: EdgeInsets.only(right: 3),
                height: 55,
                decoration: BoxDecoration(
                  border: _type ==3? Border.all(color: Colors.black87,width: 1): Border.all(color: Colors.green,width: 1),
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.transparent,
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Radio(
                            activeColor: Colors.black,
                            value: 3, onChanged:_handleRadio, groupValue: _type,)

                        ],

                      ),
                      Text('Google Pay ',style: _type ==3?TextStyle(fontSize: 19,fontWeight: FontWeight.w700,color: Colors.blue):TextStyle(fontSize: 19,fontWeight: FontWeight.w700,color: Colors.black87,
                      )),
                      Image.asset('assets/bKash-Logo-Vector (2).jpg',width: 100,height: 100,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
            Text('Sub Totle ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
            SizedBox(height: 30,),
            Text(' \$3000.00',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 19,color: Colors.blue),),

               ],

             ),
             SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Shipping  Free  ',style: TextStyle(fontWeight: FontWeight.w200,fontSize: 19),),
                  Text(' \$200.00',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 19,color: Colors.blue),),
                ],
              ),
              Divider(height: 30,),
            SizedBox(width: 31,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  SizedBox(height: 20,),
                  Text('Totle Payment ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
                  Text(' \$83000.00',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 19,color: Colors.blue),),
                ],
              ),
           SizedBox(height: 20,),
            InkWell(
              onTap: (){
                Get.to(Shoping_Address());
              },
              child:   ContinerButtonMudelsScreen(continerwidth: MediaQuery.of(context).size.width, itex: 'Chakout',
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
