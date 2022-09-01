import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:news_app/screens/home_screen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white
      ),
      home: HomeScreen(),
    );
  }
}