import 'package:boozimba/app/utils/CustomColors.dart';
import 'package:flutter/material.dart';

class IntroTextDescription extends StatelessWidget {

  String desc;
  double fontsize;
  IntroTextDescription(this.desc,{this.fontsize =20});
  @override
  Widget build(BuildContext context) {
    return Text(
      desc,
      style: TextStyle(
        fontFamily: "Segoe",
        fontWeight: FontWeight.bold,
        fontSize: fontsize,
        color: PrimaryAccentColor
      ),
    );
  }
}
