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
      home: const Scaffold(body: Home(), backgroundColor: Colors.black),
      theme: ThemeData.dark(),
    );
  }
}
