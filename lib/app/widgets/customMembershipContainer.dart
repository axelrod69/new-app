import 'package:boozimba/app/utils/CustomColors.dart';
import 'package:boozimba/app/utils/myCirclePainter.dart';
import 'package:boozimba/app/widgets/customBtnTryNow.dart';
import 'package:boozimba/app/widgets/customTextMembership.dart';
import 'package:boozimba/app/widgets/customTextWidget.dart';
import 'package:flutter/material.dart';

import 'customButton.dart';
import 'customImageShadow.dart';
import 'customTextNoProperty.dart';


class MembershipContainer extends StatelessWidget {
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
              "Diamond Membership",
            PrimaryColor
          ),
          SizedBox(height: 4,),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Lorem ipsum lorem ipsum donec lo ghghghg",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Segeo",
                  fontSize: 16,
                  color: PrimaryAccentColor
                ),
              ),
            ),
          ),
          SizedBox(height: 8,),
          Center(
            child: Text(
              "\$60.00",
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
              painter: MyPinkPainter(),
              child: CustomButtonTryNow(
                TextButton(
                    onPressed: (){},
                    child: CustomTextNoProperty(
                      "Try Now",
                      fontSize: 12,
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
         /* boxShadow: [
      BoxShadow(

      color: Colors.pinkAccent.withAlpha(80),
      blurRadius: 8.0,
      spreadRadius: 5.0,
      offset: Offset(
        0.0,
        3.0,
      ),
    )],*/
   // ),

      ),

    );





    /*Container(
      height: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(18.0),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.pink,
              spreadRadius: 4,
              blurRadius: 10,
            ),
            BoxShadow(
              color: Colors.pink,
              spreadRadius: -4,
              blurRadius: 5,
            )
          ]),*/
      /*child: FlatButton(
        onPressed:(){},
        child: Text("submit"),

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
      ),*/

  }
}
