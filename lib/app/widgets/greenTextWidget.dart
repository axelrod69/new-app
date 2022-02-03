import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

import '../utils/CustomColors.dart';

class CustomGreenText extends StatelessWidget {
  String title;
  Color color;
  double textSize;
  // Widget childWidget;
  CustomGreenText(this.title, this.color, this.textSize);

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
        shadows: [
          Shadow(
            blurRadius: 5.0,
            color: Colors.green,
            offset: Offset(0.0, 2.0),
          )
        ],
        fontFamily: "Segoe",
        fontWeight: FontWeight.bold,
        fontSize: 25 + textSize,
        color: Colors.white);
    return Stack(children: [
      Text(
        title,
        style: textStyle.copyWith(
            foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 3
              ..color = Colors.green
              ..maskFilter = MaskFilter.blur(BlurStyle.inner, 10)),
        // style: TextStyle(
        //   foreground: Paint()
        //     ..strokeWidth = 3
        //     ..color = Colors.green
        //     ..maskFilter = MaskFilter.blur(BlurStyle.inner, 5),
        //   //child: childWidget,
        // ),
        // ),
      ),
      Text(title, style: textStyle)
    ]);
  }
}
