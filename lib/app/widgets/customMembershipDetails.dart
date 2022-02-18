import 'package:boozimba/app/utils/CustomColors.dart';
import 'package:flutter/material.dart';

import 'customTextMembership.dart';

class MembershipDetails extends StatelessWidget {

  String title;
  Color color;
  double price;

  MembershipDetails(this.title,this.color, this.price);

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 24),
          child: Stack(
            // fit: StackFit.loose,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 16.0),
                child: Align(
                  alignment: Alignment(1, 1),
                  child: Image.asset("assets/icons/crownbigcropped.png",
                    fit: BoxFit.cover,
                    color: Colors.white,
                    // height: h * 0.45,
                    width: w *0.65,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Padding(
                  padding: const EdgeInsets.only(top:24.0),
                  child: CustomTextMemberShip(
                    title,
                    color,
                    fontSize: 28,
                    txtAlign: TextAlign.left,
                  ),
                ),
              ),

            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left:32.0, top: 12),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset("assets/icons/done.png",
                    color: PrimaryAccentColor,
                  ),
                  SizedBox(width: 5,),
                  Text("Donec sapien lingela",
                    style: TextStyle(
                        color: PrimaryAccentColor,
                        fontFamily: "Segoe",
                        fontSize: 14

                    ),
                  ),
                ],
              ),
              SizedBox(height: 8,),
              Row(
                children: [
                  Image.asset("assets/icons/done.png",
                    color: PrimaryAccentColor,
                  ),
                  SizedBox(width: 5,),
                  Text("Porta quis mauros sed",
                      style: TextStyle(
                          color: PrimaryAccentColor,
                          fontFamily: "Segoe",
                          fontSize: 14

                      )
                  ),
                ],
              ),
            ],
          ),
        ),

        Center(
          child: Padding(
            padding: const EdgeInsets.only(top:30.0),
            child: Container(
              height: h *0.001,
              width: w*0.50,
              decoration: BoxDecoration(
                color: PrimaryAccentColor,
                shape: BoxShape.rectangle,
              ),
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top:18.0),
            child: Text("Try 2 Days For free. Then  \$$price/month",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: PrimaryAccentColor,
                  fontFamily: "Segoe",
                  fontSize: 16,
                )
            ),
          ),
        ),
      ],

    );
  }
}
