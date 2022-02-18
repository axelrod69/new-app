import 'package:boozimba/app/utils/myCustomPainter.dart';
import 'package:flutter/material.dart';

class OrangePainter extends CustomPainter {
  OrangePainter();

  @override
  void paint(Canvas canvas, Size size) {
    final rrectBorder =
        RRect.fromRectAndRadius(Offset.zero & size, Radius.circular(12));
    final rrectShadow =
        RRect.fromRectAndRadius(Offset(0, 2) & size, Radius.circular(12));

    final shadowPaint = Paint()
      ..color = Colors.lightGreen
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3
      ..maskFilter = MaskFilter.blur(BlurStyle.solid, 20);

    canvas.drawRRect(rrectShadow, shadowPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
