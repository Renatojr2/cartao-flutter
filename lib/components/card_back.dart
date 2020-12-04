import 'package:flutter/material.dart';

class CardNubankBack extends StatelessWidget {
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
                  top: 30,
                  child: Container(
                    height: 65,
                    width: double.infinity,
                    color: Colors.grey[200],
                  ),
                ),
                Positioned(
                  child: Row(
                    children: [
                      Text(
                        '9999 99999 9999 9999',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      Image.asset(
                        'assets/cirrus.png',
                        width: 60,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
