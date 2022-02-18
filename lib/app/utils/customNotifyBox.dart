
import 'package:flutter/material.dart';
class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint_0 = new Paint()
      ..color = Colors.black87
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;


    Path path_0 = Path();
    path_0.moveTo(size.width*0.3737500,size.height*0.2980000);
    path_0.lineTo(size.width*0.1862500,size.height*0.2980000);
    path_0.lineTo(size.width*0.1887500,size.height*0.9020000);
    path_0.lineTo(size.width*0.8100000,size.height*0.9000000);
    path_0.lineTo(size.width*0.8112500,size.height*0.3000000);
    path_0.lineTo(size.width*0.6262500,size.height*0.2980000);
    path_0.quadraticBezierTo(size.width*0.6243750,size.height*0.0645000,size.width*0.5000000,size.height*0.0620000);
    path_0.quadraticBezierTo(size.width*0.3725000,size.height*0.0645000,size.width*0.3737500,size.height*0.2980000);
    path_0.close();

    canvas.drawPath(path_0, paint_0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}