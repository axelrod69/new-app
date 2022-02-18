import 'package:flutter/material.dart';

class CustomShapeClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    // path.lineTo(0, size.height);

    // path.lineTo(size.width, size.height);
    // path.close();

    path.moveTo(size.width / 2, 0);

    path.lineTo(0, size.height);

    path.lineTo(size.width, size.height);
    path.close(); // print(path.toString());
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
