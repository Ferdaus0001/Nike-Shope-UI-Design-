import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'CostomWidgets/Continers_button_modes.dart';
import 'OrderComFormScreen.dart';

class Shoping_Address extends StatefulWidget {
  const Shoping_Address({super.key});

  @override
  State<Shoping_Address> createState() => _Shoping_AddressState();
}

class _Shoping_AddressState extends State<Shoping_Address> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Adress '),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,

      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(padding: EdgeInsets.all(24),
            child: Column(

              children: [
                Form(child: Column(
                  children: [
                    SizedBox(height: 20,),
                    TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        label: Text('Name '),
                        prefixIcon: Icon(Icons.person),
                        hintText: 'Full Name ',
                        border: OutlineInputBorder(
                          borderRadius:BorderRadius.circular(21),
                        )
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          label: Text('Number  '),
                          prefixIcon: Icon(Icons.phone),
                          hintText: 'Phone Number  ',
                          border: OutlineInputBorder(
                            borderRadius:BorderRadius.circular(21),
                          )
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          label: Text('Address  '),
                          prefixIcon: Icon(Icons.home_work_outlined),
                          hintText: ' Home Address /City',
                          border: OutlineInputBorder(
                            borderRadius:BorderRadius.circular(21),
                          )
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          label: Text('State '),
                          prefixIcon: Icon(Icons.maps_home_work_outlined),
                          hintText: ' Cretan Location  ',
                          border: OutlineInputBorder(
                            borderRadius:BorderRadius.circular(21),
                          )
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          label: Text('Ziep Code '),
                          prefixIcon: Icon(Icons.numbers_outlined),
                          hintText: ' Enter you State Zip Code ',
                          border: OutlineInputBorder(
                            borderRadius:BorderRadius.circular(21),
                          )
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          label: Text('Ziep Code '),
                          prefixIcon: Icon(Icons.numbers_outlined),
                          hintText: ' Enter you State Zip Code ',
                          border: OutlineInputBorder(
                            borderRadius:BorderRadius.circular(21),
                          )
                      ),
                    ),
                  ],
                )),
                SizedBox(height: 20,),
                InkWell(
                  onTap: (){
                   Get.to( OrderComFormScreen());
                  },
                  child: ContinerButtonMudelsScreen(
                    continerwidth: MediaQuery.of(context).size.height,
                    itex: ' Add Address ',
                    bgColors: Colors.blue,

                  ),
                )
              ],
            ),
          )
        ),
      ),
    );
  }
}
