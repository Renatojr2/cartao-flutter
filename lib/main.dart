import 'package:cartaonubank/components/card.dart';
import 'package:cartaonubank/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromRGBO(64, 0, 64, 1),
        accentColor: Color.fromRGBO(83, 25, 83, 1),
      ),
      home: HomePage(),
    );
  }
}
