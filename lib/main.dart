import 'package:flutter/material.dart';
import 'package:ide/src/HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HexaCode',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
