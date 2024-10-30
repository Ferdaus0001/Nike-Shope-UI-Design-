import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:nikeshope/NikeHomeScreen.dart';
import 'package:nikeshope/UI/LoginScreen.dart';

class OnebordingScreen extends StatefulWidget {
  const OnebordingScreen({super.key});

  @override
  State<OnebordingScreen> createState() => _OnebordingScreenState();
}

class _OnebordingScreenState extends State<OnebordingScreen> {
  final IndroKey = GlobalKey<IntroductionScreenState>();
  @override
  Widget build(BuildContext context) {
    final _PageDecorations = PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w800,
      ),
      bodyTextStyle: TextStyle(fontSize: 20),
      bodyPadding: EdgeInsets.fromLTRB(16, 0, 17, 16),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: IndroKey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: 'Shop Now ',
          body:  ''
              'ndustry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s  when an unknown printer took a galley of type and scrambled it to make ',
          image: Image.asset(
            'assets/shoping.png',
            width: 200,
          ),
          decoration: PageDecoration(),
        ),
        PageViewModel(
          title: 'Best Deals  ',
          body: 'Buy you T Shart ndustry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s  when an unknown prin  ',
          image: Image.asset(
            'assets/splash3.png',
            width: 200,
          ),
          decoration: PageDecoration(),
        ),

        PageViewModel(
          title: 'Buy Any  Colors  T Shart ',
          body: 'Buy you T hody ndustry. Lorem Ipsum has been the industrys standard dummy text ever '
              'since the 1500s  when an unknown prin hody ndustry. hody ndustry. Lorem Ipsum has been the industrys standard dummy '
              'text Lorem Ipsum has been the industrys standard dummy text   '
              'text Lorem Ipsum hassurvived not only five centuries, but also the leap into electronic typesetting, '
              'remaining essentially unchanged. It was popularised i been'
              ' the industrys standard dummy text',

          image: Image.asset(
            'assets/undraw_undraw_choose_color_uotg_(1)_5ah4.png',
            width: 200,
          ),

          decoration: PageDecoration(),
          footer: Padding(padding: EdgeInsets.only(left: 15,right:15, top: 160),
            child: ElevatedButton(onPressed: (){
              Get.off(LoginScreen());
            }, child: Text('Lats a Shop',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
              style: ElevatedButton.styleFrom(minimumSize: Size(300, 66),
                    backgroundColor: Colors.blue,

              ),
            ),
          ),

        ),

      ],
      showSkipButton: false,
      showDoneButton: false,
      showBackButton: true,

      back: Text(
        'Back  ',
        style: TextStyle(
            fontSize: 19, fontWeight: FontWeight.bold, color: Colors.blue),
      ),
      next: Text(
        'Next  ',
        style: TextStyle(
            fontSize: 19, fontWeight: FontWeight.bold, color: Colors.blue),
      ),

      done: Text(
        'Dand  ',
        style: TextStyle(
            fontSize: 19, fontWeight: FontWeight.bold, color: Colors.blue),
      ),
      skip: Text(
        'Skip   ',
        style: TextStyle(
            fontSize: 19, fontWeight: FontWeight.bold, color: Colors.blue),
      ),


      onDone: () {},
      onSkip: () {},
      dotsDecorator: DotsDecorator(
        size: Size.square(11),
        activeSize: Size(20, 10),
        activeColor: Colors.blue,
        color: Colors.black26,
        spacing: EdgeInsets.symmetric(horizontal: 4),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(26),
        ),
      ),
    );
  }
}
