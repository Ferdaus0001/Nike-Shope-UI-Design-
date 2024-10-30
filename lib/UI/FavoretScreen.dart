import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavoretScreen extends StatefulWidget {
  const FavoretScreen({super.key});

  @override
  State<FavoretScreen> createState() => _FavoretScreenState();
}

class _FavoretScreenState extends State<FavoretScreen> {
  List<String> tabs = [
    'Jacket',
    ' Bag ',
    'Holiday ',
    ' Woman  Pant ',
  ];
  List<String> imagtelist = [
    'assets/pexels-gabriella-ally-3664539-13733587.jpg',
    'assets/pexels-tim-douglas-6567418.jpg',
    'assets/pexels-n-voitkevich-8939790.jpg',
    'assets/image2.jpg',
    'assets/image3.jpg',
    'assets/image4.jpg',
  ];
  List<String> imagtelist2 = [


    'assets/pexels-n-voitkevich-8939790.jpg',
    'assets/pexels-n-voitkevich-8939790.jpg',
    'assets/pexels-tim-douglas-6567418.jpg',
    'assets/image3.jpg',
    'assets/image4.jpg',
    'assets/pexels-gabriella-ally-3664539-13733587.jpg',
  ];

  List<dynamic> prodactitmes = [
    ' Walm Ziper ',
    ' Bule Jacket   ',
    '  White Hodey  2 ',
    ' Women  T Shart  3',
    'Red Dresses  ',
    ' White pant '
  ];
  List princes = [
    '\$300',
    '\$400',
    '\$500',
    '\$600',
    '\$700',
    '\$800',
  ];

  List reveus = [
    '4',
    '6',
    '4',
    '6',
    '5',
    '3',
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Favret'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
       backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 30,),
              Container(
              height: 50,
                child: ListView.builder(
                  itemCount: tabs.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,

                    itemBuilder: (context, index){
                  return FittedBox(
                    child: Container(
                      height: 40,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.only(left: 15,right: 16),
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: FittedBox(
                        child: Text(tabs[index],style: TextStyle(color: Colors.black54),),
                      ) ,
                    ),
                  );
                }),
              ),
              SizedBox(height: 50,),
              Container(height: 270,
                color: Colors.white,

                child:  ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: imagtelist.length,
                    itemBuilder: (context ,indext ){
                   return Container(
                     margin: EdgeInsets.only(left: 14,top: 4),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                          SizedBox(height: 200,
                            child: Stack(
                              children: [
                                InkWell(
                                  onTap: (){},
                                 child:  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                   child: Image.asset(imagtelist[indext]),
                                  ),
                                ),
                                Positioned(
                                  right: 10,
                                  left: 10,
                                  top: 5,
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(22),
                                    ),
                                alignment: Alignment.topRight,
                                    child:   Icon(Icons.favorite,color: Colors.red,),


                                  ),
                                )
                              ],
                            ),
                          ),
                         SizedBox(height: 10,),
                         Text(prodactitmes[indext],style: TextStyle(fontWeight: FontWeight.bold),),
                         Row(
                           children: [
                             Icon(Icons.star,color: Colors.orangeAccent,size: 20,),
                             SizedBox(width: 2,),
                             Text(
                                 '( '+reveus[indext]+')'
                             ),
                             SizedBox(width: 8,),
                             Text(princes[indext],style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,fontSize: 17),),
                             SizedBox(width: 2,),
                           ],
                         ),

                       ],
                     ),
                   );
                }),

              ),
              SizedBox(height: 10,),
              /// Numbe Two
              Container(height: 270,
                color: Colors.white,

                child:  ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: imagtelist.length,
                    itemBuilder: (context ,indext ){
                      return Container(
                        margin: EdgeInsets.only(left: 14,top: 4),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(height: 200,
                              child: Stack(
                                children: [
                                  InkWell(
                                    onTap: (){},
                                    child:  ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(imagtelist2[indext]),
                                    ),
                                  ),
                                  Positioned(
                                    right: 10,
                                    left: 10,
                                    top: 5,
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(22),
                                      ),
                                      alignment: Alignment.topRight,
                                      child:   Icon(Icons.favorite,color: Colors.red,),


                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text(prodactitmes[indext],style: TextStyle(fontWeight: FontWeight.bold),),
                            Row(
                              children: [
                                Icon(Icons.star,color: Colors.orangeAccent,size: 20,),
                                SizedBox(width: 2,),
                                Text(
                                    '( '+reveus[indext]+')'
                                ),
                                SizedBox(width: 8,),
                                Text(princes[indext],style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,fontSize: 17),),
                                SizedBox(width: 2,),
                              ],
                            ),

                          ],
                        ),
                      );
                    }),

              ),
              SizedBox(height: 10,),
              Container(height: 270,
                color: Colors.white,

                child:  ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: imagtelist.length,
                    itemBuilder: (context ,indext ){
                      return Container(
                        margin: EdgeInsets.only(left: 14,top: 4),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(height: 200,
                              child: Stack(
                                children: [
                                  InkWell(
                                    onTap: (){},
                                    child:  ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(imagtelist[indext]),
                                    ),
                                  ),
                                  Positioned(
                                    right: 10,
                                    left: 10,
                                    top: 5,
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(22),
                                      ),
                                      alignment: Alignment.topRight,
                                      child:   Icon(Icons.favorite,color: Colors.red,),


                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text(prodactitmes[indext],style: TextStyle(fontWeight: FontWeight.bold),),
                            Row(
                              children: [
                                Icon(Icons.star,color: Colors.orangeAccent,size: 20,),
                                SizedBox(width: 2,),
                                Text(
                                    '( '+reveus[indext]+')'
                                ),
                                SizedBox(width: 8,),
                                Text(princes[indext],style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,fontSize: 17),),
                                SizedBox(width: 2,),
                              ],
                            ),

                          ],
                        ),
                      );
                    }),

              ),
              SizedBox(height: 10,),
              Container(height: 270,
                color: Colors.white,

                child:  ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: imagtelist.length,
                    itemBuilder: (context ,indext ){
                      return Container(
                        margin: EdgeInsets.only(left: 14,top: 4),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(height: 200,
                              child: Stack(
                                children: [
                                  InkWell(
                                    onTap: (){},
                                    child:  ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(imagtelist[indext]),
                                    ),
                                  ),
                                  Positioned(
                                    right: 10,
                                    left: 10,
                                    top: 5,
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(22),
                                      ),
                                      alignment: Alignment.topRight,
                                      child:   Icon(Icons.favorite,color: Colors.red,),


                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text(prodactitmes[indext],style: TextStyle(fontWeight: FontWeight.bold),),
                            Row(
                              children: [
                                Icon(Icons.star,color: Colors.orangeAccent,size: 20,),
                                SizedBox(width: 2,),
                                Text(
                                    '( '+reveus[indext]+')'
                                ),
                                SizedBox(width: 8,),
                                Text(princes[indext],style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue,fontSize: 17),),
                                SizedBox(width: 2,),
                              ],
                            ),

                          ],
                        ),
                      );
                    }),

              ),
              SizedBox(height: 10,),

            ],
          ),
        ),
      ),
    );
  }
}
