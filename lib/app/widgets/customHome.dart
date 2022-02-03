import 'package:boozimba/app/utils/CustomColors.dart';
import 'package:boozimba/app/widgets/customIntroTextTilte.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:neon/neon.dart';

import 'customIntroTextDescription.dart';


class CustomIntro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IntroTextTile(
            "Fusce \nFeugiat porta",
          ),
          Container(
            height: h* 0.004,
            width: w * 0.48,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                colors:[PrimaryColor, PrimaryGolden]
              )
            ),
          ),
          SizedBox(height: 20,),
          IntroTextDescription(
            "In hac habitasse platea dictumst. Fusce feugiat porta nibh"
          ),

          SizedBox(height: h * 0.09,),
          Center(
            child: Column(
              children: [
                Text("Details",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: PrimaryAccentColor,
                    fontSize: 16,
                    fontFamily: "Segoe",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Icon(Icons.expand_more,
                  color: PrimaryAccentColor,
                )
              ],
            ),
          )

        ],
      ),


    );
  }
}
