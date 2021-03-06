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

class MembershipDetailsView extends GetView<MembershipDetailsController> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: h,
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
                    //         child:
                    //             Image.asset("assets/images/logo-with-bg.png")),
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.only(
                    //         bottomRight: Radius.circular(w * 0.25),
                    //       ),
                    //     )),
                    Container(
                      width: w * 0.28,
                      height: h * 0.15,
                      // color: Colors.red,
                      // padding: EdgeInsets.only(left: w * 0.01),
                      // margin: EdgeInsets.only(left: w * 0.1),
                    ),
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
                MembershipDetails(
                    "Golden \nMembership", PrimaryAccentColor, 45),
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
      ),
    );
  }
}
