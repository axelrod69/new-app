import 'package:boozimba/app/utils/CustomColors.dart';
import 'package:flutter/material.dart';

class IntroTextTile extends StatelessWidget {
  String title;
  IntroTextTile(this.title);
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Text(
      title,
      style: TextStyle(
        fontSize: w * 0.1,
        fontFamily: "Segoe",
        fontStyle: FontStyle.italic,
        color: PrimaryGolden,
      ),
    );
  }
}
