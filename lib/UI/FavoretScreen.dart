import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavoretScreen extends StatefulWidget {
  const FavoretScreen({super.key});

  @override
  State<FavoretScreen> createState() => _FavoretScreenState();
}

class _FavoretScreenState extends State<FavoretScreen> {
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

              )
            ],
          ),
        ),
      ),
    );
  }
}
