import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:students_app/screens/app/login_screen/login_screen.dart';
import 'package:students_app/utils/color_constants.dart';
import 'package:students_app/utils/style_class.dart';

class TeacherSettingScreen extends StatefulWidget {
  const TeacherSettingScreen({super.key});

  @override
  State<TeacherSettingScreen> createState() => _TeacherSettingScreenState();
}

class _TeacherSettingScreenState extends State<TeacherSettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Teacher Settings',
          style: TextStyleClass.white16,
        ),
        backgroundColor: ColorClass.mainBlack,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
        children: [
          /// profile details display
          Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: const Offset(0, 3),
                ),
              ],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(children: [
              const CircleAvatar(
                radius: 30,
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              const SizedBox(width: 20),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  'Adam Smith',
                  style: TextStyleClass.black16,
                ),
                const SizedBox(height: 5),
                Text(
                  'KTID-34839',
                  style: TextStyleClass.gray14,
                )
              ]),
            ]),
          ),
          const SizedBox(
            height: 10,
          ),
          settingCard(
            icon: Icons.devices,
            title: 'Device setup',
            ontap: () {
              log('message');
            },
          ),
          settingCard(
            icon: Icons.person_4_outlined,
            title: 'Students List',
            ontap: () {
              log('message');
            },
          ),
          settingCard(
            icon: Icons.update,
            title: 'Check for update',
            ontap: () {
              log('message');
            },
          ),
          settingCard(
            icon: Icons.hotel_class_outlined,
            title: 'Donate a kidocave',
            ontap: () {
              log('message');
            },
          ),
          settingCard(
            icon: Icons.support_agent_sharp,
            title: 'Support & Call',
            ontap: () {
              log('message');
            },
          ),
          settingCard(
            icon: Icons.logout_outlined,
            title: 'Logout',
            ontap: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                  (route) => false);
            },
          ),

          /// Divider
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Divider(
              color: Colors.grey,
              height: 1,
            ),
          ),
          Text(
            'Version 1.0.0',
            textAlign: TextAlign.center,
            style: TextStyleClass.black14,
          ),
        ],
      ),
    );
  }

  Widget settingCard(
          {required String title,
          required IconData icon,
          required VoidCallback ontap}) =>
      GestureDetector(
        onTap: ontap,
        child: Container(
          margin: const EdgeInsets.only(bottom: 12),
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 10,
                offset: const Offset(0, 3),
              ),
            ],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(children: [
            Icon(
              icon,
              color: Colors.black,
            ),
            const SizedBox(width: 10),
            Text(
              title,
              style: TextStyleClass.black16,
            ),
          ]),
        ),
      );
}
