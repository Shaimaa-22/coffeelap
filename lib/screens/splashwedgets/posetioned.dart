import 'package:flutter/material.dart';

class Posetioned extends StatelessWidget {
  const Posetioned({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 10,
          right: 10,
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Color.fromARGB(230, 76, 52, 0).withAlpha(100),
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          top: 110,
          right: 50,
          child: Container(
            height: 160,
            width: 130,
            decoration: BoxDecoration(
              color: Color.fromARGB(230, 76, 52, 0).withAlpha(120),
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          top: 50,
          right: 50,
          child: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              color: Color.fromARGB(230, 112, 77, 0).withAlpha(100),
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          left: 10,
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Color.fromARGB(230, 76, 52, 0).withAlpha(100),
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          bottom: 110,
          left: 50,
          child: Container(
            height: 160,
            width: 130,
            decoration: BoxDecoration(
              color: Color.fromARGB(230, 76, 52, 0).withAlpha(120),
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          bottom: 50,
          left: 50,
          child: Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              color: Color.fromARGB(230, 112, 77, 0).withAlpha(100),
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    );
  }
}
