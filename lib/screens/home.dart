import 'dart:io';

import 'package:cartaonubank/components/card.dart';
import 'package:cartaonubank/components/card_back.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool flag;
  FlipDirection direction = FlipDirection.HORIZONTAL;

  setFlagValue() {
    setState(
      () {
        flag = !flag;
      },
    );
  }

  @override
  void initState() {
    super.initState();
    flag = true;
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
              child: Icon(Icons.credit_card_outlined),
            ),
            onTap: () => setFlagValue(),
          )
        ],
        title: Text('Cartão Nunbak'),
      ),
      body: Container(
        width: width,
        height: height,
        padding: EdgeInsets.all(10),
        color: Theme.of(context).accentColor,
        child: FlipCard(
          direction: direction,
          back: CardNubankBack(),
          front: CardNubankFront(),
        ),
      ),
    );
  }
}
