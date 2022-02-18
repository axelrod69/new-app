import 'package:flutter/material.dart';
// import 'CustomColors.dart';

const double _kRadius = 12;
const double _kBorderWidth = 3;

class LogOutButton extends CustomPainter {
  LogOutButton();

  @override
  void paint(Canvas canvas, Size size) {
    final rrectBorder =
        RRect.fromRectAndRadius(Offset.zero & size, Radius.circular(_kRadius));
    final rrectShadow =
        RRect.fromRectAndRadius(Offset(0, 0) & size, Radius.circular(_kRadius));

    final shadowPaint = Paint()
      ..strokeWidth = _kBorderWidth
      // ..color = PrimaryColor//Colors.green
      ..color = Colors.redAccent
      ..style = PaintingStyle.stroke
      // ..maskFilter = MaskFilter.blur(BlurStyle.inner, 2);
      ..maskFilter = MaskFilter.blur(BlurStyle.outer, 5);
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
