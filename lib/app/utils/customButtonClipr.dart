import 'package:flutter/rendering.dart';

class CustomButtonCliper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 100);

    // final points = [

    //   Offset(size., dy),
    // ];
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}
