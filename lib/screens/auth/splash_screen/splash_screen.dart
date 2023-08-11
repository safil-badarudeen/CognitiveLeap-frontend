import 'dart:async';

import 'package:flutter/material.dart';
import 'package:students_app/screens/app/user_mode_selection_screen/user_mode_selection_screen.dart';
import 'package:students_app/utils/color_constants.dart';
import 'package:students_app/utils/image_constatns.dart';

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
          builder: (context) => const UserModeSelectionSCreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    TextStyle style1 = TextStyle(
        fontFamily: 'Montserrat',
        color: ColorClass.mainWhite,
        fontSize: 22,
        fontWeight: FontWeight.w600);
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: ColorClass.mainWhite,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(ImageClass.splashIcon),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 34, vertical: 16),
                  decoration: BoxDecoration(
                      color: ColorClass.sunray,
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
