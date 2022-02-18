import 'package:boozimba/app/utils/CustomColors.dart';
import 'package:boozimba/app/utils/myCustomPainter.dart';
import 'package:boozimba/app/utils/participantPainter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'customTextNoProperty.dart';

class Participants extends StatelessWidget {
  String name;
  Color color;

  Participants(this.name, this.color);
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    final textScale = MediaQuery.of(context).textScaleFactor * 1.5;

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
          child: CustomPaint(
            painter: ParticipantPainter(color),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 4),
              // child: CustomTextNoProperty(
              //   name,
              //   // textAlign: TextAlign.center,
              //   color: PrimaryPurple,
              //   fontSize: 16,
              // ),
              child: Text(name,
                  textAlign: TextAlign.center,
                  textScaleFactor: textScale,
                  style: GoogleFonts.badScript(
                    textStyle: TextStyle(
                        shadows: [
                          Shadow(
                              color: Colors.blueAccent,
                              blurRadius: 10,
                              offset: Offset(0, 2))
                        ],
                        color: Colors.white,
                        fontSize: 15,
                        fontStyle: FontStyle.italic),
                  )),
            ),
          ),
        ),
        Positioned(
          top: h * 0.019,
          left: w * 0.006,
          child: Container(
            // margin: EdgeInsets.only(left: 6),
            // child: Image.asset("assets/icons/user.png",
            child: Icon(
              Icons.person,
              color: color,
            ),
            // color: PrimaryAccentColor,
            height: h * 0.016,
            //alignment: AlignmentDirectional(0.0, 0.9),
          ),
        ),
      ],
    );
  }
}
