import 'dart:math';

import 'package:flutter/material.dart';
import 'dart:convert';

class MyArc extends StatelessWidget {
  final double diameter;

  const MyArc({this.diameter = 200}) ;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: MyPainter(),
      size: Size(diameter, diameter),
    );
  }
}

// This is the Painter class
class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.blue;

    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(size.height / 2, size.width / 2),
        height: size.height,
        width: size.width,
      ),
      pi,
      pi,
      true,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}