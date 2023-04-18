import 'dart:ui';

import 'package:flutter/material.dart';

class ServiceSelector extends StatelessWidget {
  String mainText;
  String imagePath;
  ServiceSelector(this.mainText, this.imagePath);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 150,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.fill,
        ),
        color: const Color(0xff07264E),
        border: Border.all(
          color: const Color(0xff07264E),
          width: 5,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      child: Center(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Container(
              width: 160,
              decoration: BoxDecoration(
                color: const Color(0xff07264E),
                border: Border.all(
                  color: const Color(0xff07264E),
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: Text(
                mainText,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Container(
              width: 160,
              decoration: BoxDecoration(
                color: const Color(0xffFB943B),
                border: Border.all(
                  color: const Color(0xffFB943B),
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: const Text(
                'View All',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
