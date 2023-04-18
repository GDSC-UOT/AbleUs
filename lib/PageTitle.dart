import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  String title;

  PageTitle(this.title);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: double.infinity,
          padding:
              const EdgeInsets.only(top: 10, bottom: 30, left: 30, right: 30),
          child: Container(
            height: 20,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                color: const Color(0xff07264E),
                border: Border.all(
                  color: const Color(0xff07264E),
                )),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                title,
                textAlign: TextAlign.center,
                selectionColor: Color(0xffFFFFFC),
                style: const TextStyle(
                  fontSize: 26,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        //ListView()
      ],
    );
  }
}
