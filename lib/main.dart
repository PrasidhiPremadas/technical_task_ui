// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:thiran_ui_design/view/Screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen (),
    
    );
  }
}

