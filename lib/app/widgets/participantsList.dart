import 'package:boozimba/app/utils/CustomColors.dart';
import 'package:boozimba/app/utils/myCustomPainter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'customTextNoProperty.dart';

class Participants extends StatelessWidget {
  String name;
  Color color;

  Participants(this.name, this.color);
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Container(
          height: h * 0.30,
          width: w * 0.70,
          margin: EdgeInsets.symmetric(horizontal: 12, vertical: 4.0),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10),
              border:
                  Border.all(color: color, width: 2, style: BorderStyle.solid)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 4),
            child: CustomTextNoProperty(
              name,
              // textAlign: TextAlign.center,
              color: PrimaryPurple,
              fontSize: 16,
            ),
          ),
        ),
        Positioned(
          top: h * 0.012,
          left: w * 0.006,
          child: Container(
            // margin: EdgeInsets.only(left: 6),
            // child: Image.asset("assets/icons/user.png",
            child: Icon(
              Icons.person,
              color: color,
            ),
            // color: PrimaryAccentColor,
            height: 16,
            //alignment: AlignmentDirectional(0.0, 0.9),
          ),
        ),
      ],
    );
  }
}
