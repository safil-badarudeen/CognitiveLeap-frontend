import 'package:flutter/material.dart';
import 'package:students_app/utils/color_constants.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle style1 = TextStyle(color: ColorConstant.mainBlack);
    return Scaffold(
      body: Container(
        color: ColorConstant.mainWhite,
        child: Center(
          child: Text(
            'Logo',
            style: style1,
          ),
        ),
      ),
    );
  }
}
