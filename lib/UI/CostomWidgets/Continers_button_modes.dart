import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContinerButtonMudelsScreen extends StatefulWidget {
  const ContinerButtonMudelsScreen({super.key, this.bgColors, required this.continerwidth, required this.itex});

  final Color? bgColors;
  final double continerwidth;
  final String itex;

  @override
  State<ContinerButtonMudelsScreen> createState() => _ContinerButtonMudelsScreenState();
}

class _ContinerButtonMudelsScreenState extends State<ContinerButtonMudelsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: widget.continerwidth,  
      decoration: BoxDecoration(
        color: widget.bgColors  ,
        borderRadius: BorderRadius.circular(20),

      ),
      child: Center(
        child: Text(widget.itex,style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold,color: Colors.white),),

      ),
    );
  }
}
