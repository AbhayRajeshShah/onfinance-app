import 'package:flutter/material.dart';
import './screens/Home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Builder(builder: (context) {
            return const Home();
          }),
          backgroundColor: Colors.black),
      theme:
          ThemeData(brightness: Brightness.dark, fontFamily: 'SF Pro Display'),
    );
  }
}
