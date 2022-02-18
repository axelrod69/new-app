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


class CustomNotifyWidget extends StatelessWidget {
  /*final String image;
  final String title;
  final String description;
  final String price;*/

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Container(
      //height: 80,
      // width: w * 0.40,
      // height: h * 0.07,
      alignment: Alignment.center,
      child: Column(
        children: [
          SizedBox(height: h * 0.08,),
          /*ImageShadow(
            Image.asset("assets/icons/google.png",
              height: 38,
            ),
          ),*/
          SizedBox(height: 0,),
          CustomTextMemberShip(
              "Congratulations",
              PrimaryColor
          ),
          SizedBox(height: 4,),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Lorem ipsum lorem ipsum donec lo Lorem ipsum lorem ipsum donec lo",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: "Segeo",
                    fontSize: 16,
                    color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 8,),
          Container(
            margin: EdgeInsets.only(top: 12, bottom: 18),
            child: CustomPaint(
              painter: MyCustomPainter(
                  PrimaryPurple
              ),
              child: CustomButtonTryNow(
                TextButton(
                    onPressed: (){},
                    child: CustomTextNoProperty(
                      "Got It!",
                      fontSize: 16,
                      color: PrimaryColor,
                    ),
                ),
                width: 0.30,
                //height: 0.09,
              ),
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.transparent,
        //shape: BoxShape.rectangle,
        border: Border.all(style: BorderStyle.solid, color: PrimarySilver, width: 1,
        ),
      ),

    );


  }
}
