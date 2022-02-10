import 'package:boozimba/app/utils/CustomColors.dart';
import 'package:boozimba/app/utils/myCustomPainter.dart';
import 'package:flutter/material.dart';

import 'customBtnTryNow.dart';

class OverViewClan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: CustomPaint(
        painter: MyCustomPainter(PrimaryColor),
        child: CustomButtonTryNow(
            TextField(
              style: TextStyle(
                  color: PrimaryAccentColor,
                  fontFamily: "Segoe",
                  shadows: [
                    Shadow(
                      color: PrimaryColor,
                      blurRadius: 3.0,
                      //spreadRadius: 2.0,
                    ),
                  ]),
              decoration: InputDecoration(
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  // suffixIcon: Icon(
                  //   Icons.person_outline,
                  //   color: Colors.white,
                  // ),
                  contentPadding: EdgeInsets.all(12),
                  hintText: "Lorem Clan",
                  hintStyle: TextStyle(
                    color: PrimaryAccentColor,
                    fontFamily: "Segoe",
                    fontWeight: FontWeight.w600,
                    shadows: [
                      Shadow(
                        color: PrimaryColor,
                        blurRadius: 3.0,
                        //spreadRadius: 2.0,
                      )
                    ],
                  ),
                  labelStyle: TextStyle(
                    color: PrimaryAccentColor,
                    fontFamily: "Segoe",
                    fontWeight: FontWeight.w600,
                    shadows: [
                      Shadow(
                        color: PrimaryColor,
                        blurRadius: 3.0,
                        //spreadRadius: 2.0,
                      )
                    ],
                  )),
            ),
            height: 0.06,
            width: double.infinity),
      ),
    );
  }
}
