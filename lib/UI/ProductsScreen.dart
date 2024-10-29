import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:nikeshope/UI/CostomWidgets/Products_deteles_PopomScreen.dart';

class ProductsScreen extends StatefulWidget {
  final List<String> productsimage = [
    'assets/image4.jpg',
    'assets/image2.jpg',
    'assets/image3.jpg',
    'assets/pixche2.jpg',
    'assets/pexels-gabriella-ally-3664539-13733587.jpg',
    'assets/pexels-tim-douglas-6567418.jpg',
  ];

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 450,
                  child: FanCarouselImageSlider.sliderType1(
                    imagesLink: widget.productsimage,
                    isAssets: true,
                    autoPlay: true,
                    sliderHeight: 400,
                    showIndicator: true,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15),
                        Text(
                          'Wziarm Ziper T Shart ',
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Hoddy Jacket ',
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Text(
                      '\$3000.00',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                          color: Colors.blue),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: RatingBar.builder(
                    itemSize: 22,
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Cool Windy Jacket  \n whate is comming sir whait is you planing sir for do any thins for fund sir\n i fun anyt thisn for my whater up commming',
                    style: TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        border: Border.all(color: Colors.blue),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                        ),
                      ),
                    ),

                     // InkWell(
                     //   onTap: (){
                     //     Get.to(Products_delels_Popom_Screen());
                     //   },
                     //   child: Container(
                     //     height: 60,
                     //     width: 220,
                     //     decoration: BoxDecoration(
                     //       color: Colors.red,
                     //       borderRadius: BorderRadius.circular(31),
                     //     ),
                     //     child: Center(child: Text('Buy Now ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),)),
                     //   ),
                     // ),
                    ProductModelsPopom()

                  ],
                ),

              ],

            ),
          ),
        ),
      ),
    );
  }
}
