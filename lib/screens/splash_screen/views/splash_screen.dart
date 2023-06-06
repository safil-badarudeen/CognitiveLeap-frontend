import 'dart:async';

import 'package:flutter/material.dart';
import 'package:students_app/screens/home_screen/views/home_screen.dart';
import 'package:students_app/utils/color_constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CategoriesScreen(),
            )));
  }

  @override
  Widget build(BuildContext context) {
    TextStyle style1 = TextStyle(
        fontFamily: 'Montserrat',
        color: ColorConstant.mainWhite,
        fontSize: 22,
        fontWeight: FontWeight.w600);
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: ColorConstant.mainWhite,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.network(
                  'https://learningworksforkids.com/wp-content/uploads/collect-app-icon.png',
                  // height: 300,
                  // width: 300,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 34, vertical: 16),
                  decoration: BoxDecoration(
                      color: ColorConstant.sunray,
                      borderRadius: BorderRadius.circular(50)),
                  child: Text(
                    'Cognitive Leap',
                    style: style1,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
