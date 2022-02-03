import 'package:boozimba/app/utils/CustomColors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyYellowText extends StatelessWidget {
  String text;
  double fontSize;

  MyYellowText(this.text, {this.fontSize = 12});
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.badScript(
          textStyle: TextStyle(
              color: PrimaryGolden,
              fontSize: fontSize,
              fontStyle: FontStyle.italic),
        ));
  }
}
