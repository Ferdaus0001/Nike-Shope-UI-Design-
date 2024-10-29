import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nikeshope/NikeHomeScreen.dart';

import 'CardScreen.dart';
import 'FavoretScreen.dart';
import 'ProfilesScreen.dart';

class NavegationsScreen extends StatefulWidget {
  const NavegationsScreen({super.key});

  @override
  State<NavegationsScreen> createState() => _NavegationsScreenState();
}

class _NavegationsScreenState extends State<NavegationsScreen> {
  int pageIndex = 0;
  final List<Widget> pages = [
    NikeHomeScreens(),
    CardScreen(),
    FavoretScreen(),
    ProfilesScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSwitcher(
        duration: Duration(milliseconds: 800),
        transitionBuilder: (Widget child, Animation<double> animation) {
          return Stack(
            children: [
              SlideTransition(
                position: Tween<Offset>(
                  begin: Offset(0.2, 0.0),
                  end: Offset(0.0, 0.0),
                ).animate(animation),
                child: FadeTransition(
                  opacity: animation,
                  child: ScaleTransition(
                    scale: animation,
                    child: child,
                  ),
                ),
              ),
            ],
          );
        },
        child: pages[pageIndex],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Action for FAB
        },
        child: Icon(
          CupertinoIcons.qrcode,
          color: Colors.white,
        ),
        backgroundColor: Colors.deepOrange.shade400,
        shape: CircleBorder(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: [
          CupertinoIcons.home,
          CupertinoIcons.cart,
          CupertinoIcons.heart_fill,
          CupertinoIcons.profile_circled,
        ],
        inactiveColor: Colors.grey,
        gapLocation: GapLocation.center,
        activeIndex: pageIndex,
        activeColor: Colors.green,
        backgroundColor: CupertinoColors.white,
        notchSmoothness: NotchSmoothness.sharpEdge,
        leftCornerRadius: 11,
        iconSize: 26,
        elevation: 15,
        rightCornerRadius: 10,
        onTap: (index) {
          setState(() {
            pageIndex = index;
          });
        },
      ),
    );
  }
}
