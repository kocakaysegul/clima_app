import 'package:flutter/material.dart';
import 'package:v2_clima/screens/loading_screen.dart';
import 'package:v2_clima/utilities/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: LoadingScreen(),
    );
  }
}
