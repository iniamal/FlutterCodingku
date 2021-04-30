import 'package:flutter/material.dart';
import 'package:uts1/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Codingku',
      home: HomeScreen(),
    );
  }
}
