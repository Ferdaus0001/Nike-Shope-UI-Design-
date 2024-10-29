import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nikeshope/UI/OTPScreen.dart';

import 'CostomWidgets/Continers_button_modes.dart';

class OrderSeccussFull extends StatelessWidget {
  const OrderSeccussFull({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/successful.png',width: 500,height: 500,),
                Text( 'Pyment Success ? ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.blue),),
                Text( ' Chak your email sir and inbox you account ',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black54),),
                Text( '  OTP  your email sir and inbox you account ',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black54),),
                Text( '  OTP  is 4554645 is so  secart sir ',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black54),),
                SizedBox(height: 20,),
                InkWell(
                  onTap: (){
                    Get.to(OTPScreen());
                  },
                  child: ContinerButtonMudelsScreen(
                    continerwidth: MediaQuery.of(context).size.width,
                    itex: ' Check OTP ',
                    bgColors: Colors.blue,
                  ),
                )
              ],
            ),
          ),
        ),
      ),

    );
  }
}
