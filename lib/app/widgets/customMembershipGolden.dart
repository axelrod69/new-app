import 'package:boozimba/app/utils/CustomColors.dart';
import 'package:boozimba/app/utils/myCirclePainter.dart';
import 'package:boozimba/app/utils/myCustomPainter.dart';
import 'package:boozimba/app/widgets/customBtnTryNow.dart';
import 'package:boozimba/app/widgets/customTextMembership.dart';
import 'package:boozimba/app/widgets/customTextWidget.dart';
import 'package:flutter/material.dart';

import 'customButton.dart';
import 'customImageShadow.dart';
import 'customTextNoProperty.dart';


class MembershipContainerGolden extends StatelessWidget {
  /*final String image;
  final String title;
  final String description;
  final String price;*/

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 80,
      // width: w * 0.40,
      // height: h * 0.07,
      alignment: Alignment.center,
      child: Column(
        children: [
          SizedBox(height: 12,),
          ImageShadow(
            Image.asset("assets/icons/google.png",
              height: 38,
            ),
          ),
          SizedBox(height: 0,),
          CustomTextMemberShip(
              "Golden Membership",
              PrimaryGolden
          ),
          SizedBox(height: 4,),
          Center(
            child: Text(
              "Lorem ipsum lorem ipsum donec lo",
              style: TextStyle(
                  fontFamily: "Segeo",
                  fontSize: 16,
                  color: Colors.white
              ),
            ),
          ),
          SizedBox(height: 8,),
          Center(
            child: Text(
              "\$80.00",
              style: TextStyle(
                  fontFamily: "Segeo",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      color: Colors.white,
                      //offset: Offset(0.0,2.0),
                      //blurRadius: 2.0,
                    )
                  ]
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 12, bottom: 18),
            child: CustomPaint(
              painter: MyCustomPainter(
                  PrimaryGolden
              ),
              child: CustomButtonTryNow(
                TextButton(
                    onPressed: (){},
                    child: CustomTextNoProperty(
                      "Try Now",
                      fontSize: 12,
                      color: PrimaryGolden,
                    )
                ),
              ),
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.transparent,
        //shape: BoxShape.rectangle,
        border: Border.all(style: BorderStyle.solid, color: Colors.white, width: 1.5,
        ),
      ),
    );

  }
}
