import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/CustomColors.dart';

class CustomTextNoProperty extends StatelessWidget {
  String title;
  double fontSize;
  Color color;
  TextAlign txt;
  FontWeight weight;

  // Widget childWidget;
  CustomTextNoProperty(this.title,
      {this.fontSize = 22,
      this.color = PrimaryColor,
      this.txt = TextAlign.center,
      this.weight = FontWeight.w600});
  // this.weight = FontWeight.w500});
  @override
  Widget build(BuildContext context) {
    return Text(title,
        textAlign: txt, //TextAlign.center,
        style: TextStyle(
            color: Colors.white,
            fontFamily: "Segoe",
            // fontStyle: FontStyle.italic,
            fontWeight: weight,
            fontSize: fontSize,
            shadows: [
              Shadow(
                color: color,
                blurRadius: 3.0,
                //spreadRadius: 2.0,
              ),
            ]

            //child: childWidget,
            )

        // ),
        );
  }
}
