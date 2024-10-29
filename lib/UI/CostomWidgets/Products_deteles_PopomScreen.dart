import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../CardScreen.dart';
import 'Continers_button_modes.dart';
 class ProductModelsPopom extends StatelessWidget {
  final iStyle = TextStyle(
    color: Colors.black87,
    fontWeight: FontWeight.w600
  );
List<Color> colorsList = [
  Colors.red,
  Colors.blue,
  Colors.orangeAccent,
  Colors.deepPurpleAccent,
];
   @override
   Widget build(BuildContext context) {
     return  InkWell(
       onTap: (){
         showModalBottomSheet(context: context,
             backgroundColor: Colors.transparent,
             builder: (context) => Container(
             height: MediaQuery.of(context).size.height /2.4,
               decoration: BoxDecoration(
                 color: Colors.white,
           borderRadius: BorderRadius.only(
             topLeft: Radius.circular(36),
             topRight: Radius.circular(36),
           ),
               ),
               child:  Padding(padding: EdgeInsets.symmetric(horizontal: 30),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         SizedBox(height: 30,),
                             Text('Size : ',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color: Colors.black),),
                         SizedBox(height: 30,),
                             Text('Colors : ',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color: Colors.black),),
                         SizedBox(height: 30,),
                             Text('Total  : ',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color: Colors.black),),
                       ],
                     ),
                      SizedBox(height: 30,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(height: 92,),
                              Text('S',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 19),),
                              SizedBox(width: 20,),
                              Text('M',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 19),),
                              SizedBox(width: 30,),
                              Text('L',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 19),),
                              SizedBox(width: 30,),
                              Text('XL',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 19),),

                            ],
                          ),

                          Container(
                            child: Row(
                              children: [
                                for(var i = 0; i<4; i++)
                                  Container(
                                    margin: EdgeInsets.symmetric(horizontal: 7),
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color:  colorsList[i],
                                      borderRadius: BorderRadius.circular(33),
                                    ),
                                  ),

                              ],
                            ),
                          ),
                          SizedBox(height: 26,),
                           Row(
                             children: [
                               SizedBox(width: 31,),
                               Text('_',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),),
                               SizedBox(width: 32,),
                               Text(' 1 ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 17),),
                               SizedBox(width: 31,),
                               Text('+',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),),

                             ],
                           )
                        ],
                      ),

                    ],
                  ),
                 SizedBox(height: 20,),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                      Text('Totly Pyment',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
                         Text('\$62000',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color: Colors.blue),),

                       ],
                     ),
                     SizedBox(height: 20,),
                     InkWell(
                       onTap: (){
                         Get.to(CardScreen());
                       },
                       child: ContinerButtonMudelsScreen(continerwidth: MediaQuery.of(context).size.height,
                         itex: 'Checkout',
                         bgColors: Colors.blue,
                       ),
                     )
                   ],
                 ),
               )
             ),

         );
       },
       child: ContinerButtonMudelsScreen(
         continerwidth: MediaQuery.of(context).size.width/ 1.5,
         itex: 'Buy Now ',
         bgColors: Colors.blue,
       ),
     );
   }
 }
