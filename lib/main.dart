import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:students_app/provider/home_provider.dart';
import 'package:students_app/screens/app/login_screen/login_screen.dart';

import 'screens/app/detail_screen/providers/item_detail_provider.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ItemProvider()),
        ChangeNotifierProvider(create: (_) => HomeProvider()),
      ],
      child: MaterialApp(
        title: 'Cognitive Leap',
        theme: ThemeData(
          primarySwatch: Colors.brown,
        ),
        debugShowCheckedModeBanner: false,
        home: const LoginScreen(),
      ),
    );
  }
}
