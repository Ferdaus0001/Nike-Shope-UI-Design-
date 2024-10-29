

import 'package:flutter/material.dart';

import 'CostomWidgets/Continers_button_modes.dart';
class CardScreen extends StatefulWidget {
 List CardImageList = [
   'assets/image4.jpg',
   'assets/image2.jpg',
   'assets/image3.jpg',
   // 'assets/pixche2.jpg',
   // 'assets/pexels-gabriella-ally-3664539-13733587.jpg',
   'assets/pexels-tim-douglas-6567418.jpg',
 ];
 List ProductTitles = [
   'Warm Zipper ',
   'Knitted  Waid? ',
   'Child  Wido ',
   'Warm T Shart  ',
   'Hody  Jacket ',
   'T Zipper Shart ',

 ];

 List PricesCard= [
   '\$4500',
   '\$5500',
   '\$7500',
   '\$4500',
   '\$9500',
 ];
  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Card '),
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: BackButton(),

      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(11),
          child: Column(
            children: [
              Container(

                child: ListView.builder(
                  itemCount: widget.CardImageList.length,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context,indext ){
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                   Checkbox( splashRadius: 11,activeColor: Colors.blue, value: true, onChanged: (val){}),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(widget.CardImageList[indext],height: 80,width: 80,fit: BoxFit.cover,),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(widget.ProductTitles[indext],style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),
                            SizedBox(height: 20,),
                            Text('Best Prices ',style: TextStyle(fontWeight: FontWeight.w200,color: Colors.grey),),
                            SizedBox(height: 10,),
                              Text(widget.PricesCard[indext],style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),

                          ],
                        ),
                        Row(
                          children: [
                            Text('-',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 27,color: Colors.red),),
                            SizedBox(width: 10,),
                            Text('1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21),),
                            SizedBox(width: 10,),
                            Text('+',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21,color: Colors.blue),),
                          ],
                        )
                      ],
                    ),
                  );
                }),
              ),
             SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
               Text("Selete All ",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  Checkbox(
                    splashRadius: 20,
                      activeColor: Colors.blue,

                      value: false, onChanged:(val){}),
              ],),
              SizedBox(height: 10,),
              Divider(height: 5,thickness: 1,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Totaly Paymetn ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
                  Text(' \$345400 ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19,color: Colors.blue),),

                ],
              ),
              SizedBox(height: 10,),
              InkWell(
                onTap: (){},
                child: ContinerButtonMudelsScreen(
                  
                  continerwidth: MediaQuery.of(context).size.width,
                  itex:'Checkout',
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
