import 'package:flutter/material.dart';

class CardNubankFront extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height * 0.32;
    return Center(
      child: Stack(
        children: [
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              children: [
                Positioned(
                  right: 15,
                  top: 15,
                  child: Image.asset('assets/mastercard.png', height: 50,),
                ),
                Positioned(
                  top: 60,
                  left: 30,
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/chip.png',
                        width: 40,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(
                        'assets/nfc.png',
                        width: 15,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 30,
                  left: 30,
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/nu_logo.png',
                        color: Colors.white,
                        width: 85,
                      ),
                      Text(
                        'Meu cartão',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
