import 'package:flutter/material.dart';
import 'CustomColors.dart';

const double _kRadius = 10;
const double _kBorderWidth = 3;


class MyCustomPainter extends CustomPainter {
  Color color;
  MyCustomPainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final rrectBorder = RRect.fromRectAndRadius(Offset.zero & size, Radius.circular(_kRadius));
    final rrectShadow = RRect.fromRectAndRadius(Offset(0,1.5) & size, Radius.circular(_kRadius));

    final shadowPaint = Paint()
      ..strokeWidth = _kBorderWidth
      ..color = color//Colors.green
      ..style = PaintingStyle.stroke
      ..maskFilter = MaskFilter.blur(BlurStyle.inner, 2);
    final borderPaint = Paint()
      ..strokeWidth = _kBorderWidth
      ..color = Colors.white
      ..style = PaintingStyle.stroke;

    canvas.drawRRect(rrectShadow, shadowPaint);
    //canvas.drawRRect(rrectBorder, borderPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}