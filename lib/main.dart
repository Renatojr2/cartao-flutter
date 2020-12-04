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
        primaryColor: Color.fromRGBO(153, 51, 153, 1),
        accentColor: Color.fromRGBO(109, 33, 109, 1),
      ),
      home: HomePage(),
    );
  }
}
