import 'package:flutter/material.dart';

const double radius = 6;
const double borderWidth = 0;

class SignBoxPainter extends CustomPainter {
  SignBoxPainter();

  @override
  void paint(Canvas canvas, Size size) {
    final lineShadow =
        RRect.fromRectAndRadius(Offset(1, 2) & size, Radius.circular(radius));
    // TODO: implement paint
    final shadow = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.stroke
      ..strokeWidth = borderWidth
      ..maskFilter = MaskFilter.blur(BlurStyle.outer, 5);

    canvas.drawRRect(lineShadow, shadow);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
