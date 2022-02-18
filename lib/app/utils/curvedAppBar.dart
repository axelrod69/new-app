import 'package:flutter/material.dart';

class CurvedAppBar extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path = new Path();
    path.lineTo(0.0, size.height - 20);

    var controlPoint = Offset(size.width / 3, size.height + 30);
    var endPoint = Offset(size.width + 10, size.height / 2);

    path.quadraticBezierTo(
        controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);

    // path.lineTo(0.0, size.height / 2);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
// class CurvedAppBar extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     Path path = Path();
//     double firstFactor = size.width / 3.3333;
//     double secondFactor = size.height / 2;
//     double thirdFactor = size.width / 4.166;
//     double fourthFactor = size.height / 1.4285;
//     path.moveTo(firstFactor, 0);
//     path.quadraticBezierTo(thirdFactor, firstFactor, 0, firstFactor);
//     path.lineTo(0, fourthFactor);
//     path.quadraticBezierTo(
//       size.width / 3,
//       size.height,
//       size.width,
//       secondFactor,
//     );
//     path.lineTo(size.width, 0);
//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
// }
