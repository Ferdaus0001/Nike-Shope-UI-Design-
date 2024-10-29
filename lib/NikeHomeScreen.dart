import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:nikeshope/UI/CostomWidgets/Products_deteles_PopomScreen.dart';

import 'UI/ProductsScreen.dart';

class NikeHomeScreens extends StatefulWidget {
  @override
  State<NikeHomeScreens> createState() => _NikeHomeScreensState();
}

class _NikeHomeScreensState extends State<NikeHomeScreens> {
  List<String> tabs = [
    'All',
    ' Categorises',
    'TOP ',
    'Recommended ',
  ];
  List<String> imagtelist = [
    'assets/pexels-gabriella-ally-3664539-13733587.jpg',
    'assets/pexels-tim-douglas-6567418.jpg',
    'assets/pexels-n-voitkevich-8939790.jpg',
    'assets/image2.jpg',
    'assets/image3.jpg',
    'assets/image4.jpg',
  ];
  List<dynamic> prodactitmes = [
    ' Walm Ziper ',
    ' Ferdaus 1 ',
    ' Ferdaus 2 ',
    ' Ferdaus 3',
    'ferdaus4 ',
    'ferdaus5 '
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
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 12, right: 13, top: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(12),
                      height: 60,
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 6,
                            spreadRadius: 2,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                            label: Text(
                              'Search for products',
                              style: TextStyle(fontSize: 15),
                            ),
                            prefixIcon: Icon(
                              CupertinoIcons.search,
                              color: Colors.orangeAccent,
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(15),
                            )),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 6,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 6,
                            spreadRadius: 2,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Icon(
                          CupertinoIcons.bell,
                          color: Colors.orangeAccent,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20),
                // Add more widgets here for the home screen content

                Container(
                  height: 170,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 1,
                        spreadRadius: 1,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: Image.asset(
                      'assets/undraw_undraw_applications_vaxx_(1)_p5j1.png'),
                ),
                SizedBox(
                  height: 7,
                ),
                SizedBox(
                  height: 60,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: tabs.length,
                      itemBuilder: (context, indext) {
                        return FittedBox(
                          child: Container(
                            height: 40,
                            margin: EdgeInsets.all(8),
                            padding: EdgeInsets.only(right: 15, left: 15),
                            decoration: BoxDecoration(
                              color: Colors.black12.withOpacity(0.05),
                              borderRadius: BorderRadius.circular(13),
                            ),
                            child: Center(
                              child: FittedBox(
                                child: Text(
                                  tabs[indext],
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54),
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  height: 185,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: ListView.builder(
                      itemCount: imagtelist.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, indext) {
                        return Container(

                          width: 320,
                          color: Colors.white,
                          padding: EdgeInsets.only(right: 15, left: 5),

                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 200,
                                child: Stack(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Get.to(ProductsScreen());
                                      },
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(21),
                                        child: Image.asset(
                                          imagtelist[indext],
                                          fit: BoxFit.cover,
                                          height: 160,
                                          width: 160,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      /// icon fositoned
                                      left: 101,
                                      right: 11,
                                      child: Container(
                                        height: 31,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons.favorite,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                                 Padding(
                                   padding: const EdgeInsets.only(left: 11),
                                   child: Column(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                     children: [
                                       Text(
                                         prodactitmes[indext],
                                         style: TextStyle(
                                             fontWeight: FontWeight.bold, fontSize: 16),
                                       ),
                                       SizedBox(height: 10,),
                                       SizedBox(
                                         width: 122,
                                         child: Text('typesetting industry.s the 1500s,  it to make a type '
                                             'specimen book. It has survived not only five centuries,'
                                             ' but also the leap standard dummy text ever sinc Lorem '
                                             'Ipsum has been the industry',
                                           maxLines: 6,
                                           overflow: TextOverflow.ellipsis,
                                         ),
                                       ),

                                       SizedBox(
                                         height: 2,
                                       ),
                                       Row(
                                         children: [
                                           Icon(
                                             Icons.star,
                                             color: Colors.orangeAccent,
                                           ),
                                           Text('(' + reveus[indext] + ')'),
                                           SizedBox(
                                             width: 8,
                                           ),
                                           Text(
                                             princes[indext],
                                             style: TextStyle(
                                                 fontWeight: FontWeight.bold,
                                                 fontSize: 16,
                                                 color: Colors.blue),
                                           ),
                                           Row(
                                             children: [],
                                           ),
                                         ],
                                       ),
                                     ],
                                   ),
                                 )
                            ],
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'New Products ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                  ),
                ),
                SizedBox(
                  height: 11,
                ),
                Center(
                  child: GridView.builder(
                      itemCount: prodactitmes.length,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 2,
                          childAspectRatio: 0.6),
                      itemBuilder: (context, indext) {
                        /// number tow list image
                        return Container(
                          height: 240,
                          padding: EdgeInsets.only(right: 15, left: 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 200,
                                child: Stack(
                                  children: [
                                    InkWell(
                                      onTap: () { Get.to(ProductsScreen());},
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(21),
                                        child: Image.asset(
                                          imagtelist[indext],
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      /// icon fositoned
                                      left: 101,
                                      right: 11,
                                      child: Container(
                                        height: 31,
                                        width: 30,
                                        decoration: BoxDecoration(
                                          color: Colors.transparent,
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons.favorite,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                prodactitmes[indext],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.orangeAccent,
                                  ),
                                  Text('(' + reveus[indext] + ')'),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    princes[indext],
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.blue),
                                  ),
                                  Row(
                                    children: [],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
