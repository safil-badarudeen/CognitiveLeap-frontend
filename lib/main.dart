import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:students_app/screens/home_screen/views/home_screen.dart';
import 'package:students_app/screens/splash_screen/views/splash_screen.dart';

import 'screens/detail_screen/providers/item_detail_provider.dart';

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
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.brown,
        ),
        debugShowCheckedModeBanner: false,
        home: const SplashScreen(),
      ),
    );
  }
}
