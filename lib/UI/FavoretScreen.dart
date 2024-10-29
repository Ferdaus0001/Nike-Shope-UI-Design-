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
      body: Center(
        child: Text('FavoretScreen'),
      ),
    );
  }
}
