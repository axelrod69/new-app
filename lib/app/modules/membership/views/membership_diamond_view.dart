import 'package:boozimba/app/modules/membership/controllers/membership_details_diamond_controller.dart';
import 'package:boozimba/app/utils/CustomColors.dart';
import 'package:boozimba/app/utils/myCirclePainter.dart';
import 'package:boozimba/app/widgets/customBtnTryNow.dart';
import 'package:boozimba/app/widgets/customMembershipDetails.dart';
import 'package:boozimba/app/widgets/customTextNoProperty.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class MembershipDetailsDiamondView extends GetView<MembershipDetailsDiamondController>{

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
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
                    Container(
                        width: w * 0.28,
                        height: h * 0.15,
                        child: Center(child: Image.asset("assets/images/logo-with-bg.png")),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(w * 0.25),
                          ),
                        )
                    ),
                    Center(
                      child: Container(
                        // alignment: Alignment.center,
                        margin: EdgeInsets.only(top: 70,),
                        //width: double.infinity,
                        child: CustomPaint(
                          painter: MyPinkPainter(),
                          child: CustomButtonTryNow(
                            TextButton(
                                onPressed: (){},
                                child: CustomTextNoProperty(
                                  "Boozimba Membership",
                                  fontSize: 16,
                                )
                            ),
                            width: 0.60,
                            height: 0.07,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                MembershipDetails("Diamond \nMembership", PrimaryColor, 60),
                Center(
                  child: Container(
                    // alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 24, bottom: 40),
                    //width: double.infinity,
                    child: CustomPaint(
                      painter: MyPinkPainter(),
                      child: CustomButtonTryNow(
                        TextButton(
                            onPressed: (){},
                            child: CustomTextNoProperty(
                              "Subscribe Now",
                              fontSize: 16,
                            )
                        ),
                        width: 0.60,
                        height: 0.07,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

    );

  }
}