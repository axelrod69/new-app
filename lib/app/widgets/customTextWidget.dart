import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/CustomColors.dart';

//Use for labels
class CustomText extends StatelessWidget {
  String title;
  Color color;
  double textSize;
  // Widget childWidget;
  CustomText(this.title, this.color, this.textSize);
  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
        shadows: [
          Shadow(color: Colors.white, blurRadius: 5, offset: Offset(0, 0))
        ],
        color: Colors.white,
        fontSize: 16 + textSize,
        fontWeight: FontWeight.bold);

    return Container(
      margin: EdgeInsets.only(left: 45, top: 20, bottom: 10),
      // decoration: BoxDecoration(color: Colors.red),
      child: Stack(children: [
        Text(title,
            textAlign: TextAlign.center,
            style: textStyle.copyWith(
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..color = Color(0xffE11f7b)
                  ..strokeWidth = 2
                  ..maskFilter = MaskFilter.blur(BlurStyle.outer, 5))),
        Text(title, style: textStyle)
      ]),
    );
  }
}
