import 'package:flutter/material.dart';
import 'package:queritel_practical/screens/tab_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Queritel Practical',
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

