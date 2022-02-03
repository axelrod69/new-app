import 'package:flutter/material.dart';



class CustomTextMemberShip extends StatelessWidget {

  String title;
  Color color;
  double fontSize;
  TextAlign txtAlign;
  // Widget childWidget;
  CustomTextMemberShip(this.title, this.color, {this.fontSize =20, this.txtAlign = TextAlign.center} );
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 22, top: 6),
      child: Text(title,
          textAlign: txtAlign,
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Roboto",
            fontWeight: FontWeight.w500,
            fontSize: fontSize,
            shadows: [
              Shadow(
                blurRadius: 5.0,
                color: color,//Color(0xffE11f7b),
                offset: Offset(0.0, 3.0),
              ),
            ],
            //child: childWidget,
          )

      ),
    );
  }
}