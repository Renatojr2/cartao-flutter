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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
              child: Icon(Icons.credit_card_outlined),
            ),
            onTap: () {},
          )
        ],
        title: Text('Cartão Nunbak'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        color: Theme.of(context).accentColor,
        child: FlipCard(
          direction: FlipDirection.VERTICAL,
          back: CardNubankBack(),
          front: CardNubankFront(),
        ),
      ),
    );
  }
}
