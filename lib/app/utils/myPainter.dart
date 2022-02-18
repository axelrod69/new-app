import 'package:flutter/material.dart';

const double _kRadius = 7;
const double _kBorderWidth = 5;

class MyPainter extends CustomPainter {
  MyPainter();

  @override
  void paint(Canvas canvas, Size size) {
    final rrectBorder =
        RRect.fromRectAndRadius(Offset.zero & size, Radius.circular(_kRadius));
    final rrectShadow =
        RRect.fromRectAndRadius(Offset(0, 0) & size, Radius.circular(_kRadius));

    final shadowPaint = Paint()
      ..strokeWidth = _kBorderWidth
      ..color = Colors.green
      ..style = PaintingStyle.stroke
      ..maskFilter = MaskFilter.blur(BlurStyle.solid, 5);
    final borderPaint = Paint()
      ..strokeWidth = _kBorderWidth
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..maskFilter = MaskFilter.blur(BlurStyle.solid, 5);

    canvas.drawRRect(rrectShadow, shadowPaint);
    //canvas.drawRRect(rrectBorder, borderPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
