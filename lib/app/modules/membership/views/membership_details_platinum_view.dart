import 'package:boozimba/app/modules/membership/controllers/membership_details_controller.dart';
import 'package:boozimba/app/utils/CustomColors.dart';
import 'package:boozimba/app/utils/myCirclePainter.dart';
import 'package:boozimba/app/widgets/customBtnTryNow.dart';
import 'package:boozimba/app/widgets/customImageShadow.dart';
import 'package:boozimba/app/widgets/customMembershipDetails.dart';
import 'package:boozimba/app/widgets/customTextMembership.dart';
import 'package:boozimba/app/widgets/customTextNoProperty.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class MembershipDetailsPlatiunumView
    extends GetView<MembershipDetailsController> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: h * 1,
          decoration: BoxDecoration(
            //color: Colors.black,
            image: DecorationImage(
              image: AssetImage("assets/images/Membership.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  // Container(
                  //     width: w * 0.28,
                  //     height: h * 0.15,
                  //     child: Center(
                  //         child: Image.asset("assets/images/logo-with-bg.png")),
                  //     decoration: BoxDecoration(
                  //       color: Colors.red,
                  //       borderRadius: BorderRadius.only(
                  //         bottomRight: Radius.circular(w * 0.25),
                  //       ),
                  //     )),
                  Positioned(
                    child: Image.asset("assets/images/logo-with-bg.png"),
                  ),
                  Center(
                    child: Container(
                      // alignment: Alignment.center,
                      margin: EdgeInsets.only(
                        top: 70,
                      ),
                      //width: double.infinity,
                      child: CustomPaint(
                        painter: MyPinkPainter(),
                        child: CustomButtonTryNow(
                          TextButton(
                              onPressed: () {},
                              child: CustomTextNoProperty(
                                "Boozimba Membership",
                                fontSize: 16,
                              )),
                          width: 0.60,
                          height: 0.07,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              MembershipDetails("Platinum \nMembership", PrimaryPurple, 80),
              /*Container(
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
                            "GOLD \nMEMBERSHIP",
                            PrimaryGolden,
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
                  child: Text("Try 2 Days For free. Then 45/month",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: PrimaryAccentColor,
                          fontFamily: "Segoe",
                          fontSize: 16,
                      )
                  ),
                ),
              ),*/

              Center(
                child: Container(
                  // alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 24, bottom: 40),
                  //width: double.infinity,
                  child: CustomPaint(
                    painter: MyPinkPainter(),
                    child: CustomButtonTryNow(
                      TextButton(
                          onPressed: () {},
                          child: CustomTextNoProperty(
                            "Subscribe Now",
                            fontSize: 16,
                          )),
                      width: 0.60,
                      height: 0.07,
                    ),
                  ),
                ),
              ),
              /*Padding(
                padding: const EdgeInsets.only(left: 28.0, top: 8.0),
                child:
              )*/
            ],
          ),
        ),
      ),
    );
  }
}
