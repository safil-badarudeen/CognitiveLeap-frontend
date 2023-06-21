import 'package:flutter/material.dart';

class UserModeSelectionSCreen extends StatefulWidget {
  const UserModeSelectionSCreen({super.key});

  @override
  State<UserModeSelectionSCreen> createState() =>
      _UserModeSelectionSCreenState();
}

class _UserModeSelectionSCreenState extends State<UserModeSelectionSCreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/cover.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(),
        ),
      ]),
    );
  }
}
