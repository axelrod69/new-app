import 'package:boozimba/app/modules/membership/views/membership_details_platinum_view.dart';
import 'package:boozimba/app/modules/membership/views/membership_details_view.dart';
import 'package:boozimba/app/modules/membership/views/membership_diamond_view.dart';
import 'package:boozimba/app/utils/CustomColors.dart';
import 'package:boozimba/app/utils/myCustomPainter.dart';
import 'package:boozimba/app/utils/myPinkPainter.dart';
import 'package:boozimba/app/widgets/customBtnTryNow.dart';
import 'package:boozimba/app/widgets/customButton.dart';
import 'package:boozimba/app/widgets/customButtonDecorator.dart';
import 'package:boozimba/app/widgets/customMembershipGolden.dart';
import 'package:boozimba/app/widgets/customMembershipPurple.dart';
import 'package:boozimba/app/widgets/customMembershipSilver.dart';
import 'package:boozimba/app/widgets/customTextNoProperty.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:boozimba/app/widgets/customMembershipContainer.dart';
import 'package:boozimba/app/modules/membership/controllers/membership_controller.dart';

class MembershipView extends GetView<MembershipController> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      /*appBar: AppBar(
        title: Text('Membership'),
        centerTitle: true,
      ),*/
      // floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      // floatingActionButton:
      // Container(
      //     width: w * 0.28,
      //     height: h * 0.15,
      //     child: Center(child: Image.asset("assets/images/logo-with-bg.png")),
      //     decoration: BoxDecoration(
      //       borderRadius: BorderRadius.only(
      //         bottomRight: Radius.circular(w * 0.25),
      //       ),
      //     )),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: Container(
        width: double.infinity,
        height: h * 0.15,
        // color: Colors.yellow,
        child: Stack(
          children: [
            // Container(
            //     width: w * 0.28,
            //     height: h * 0.15,
            //     child: Center(
            //         child: Image.asset("assets/images/logo-with-bg.png")),
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.only(
            //         bottomRight: Radius.circular(w * 0.25),
            //       ),
            //     )),
            // topIcon(context)
            Container(
              width: w * 0.28,
              height: h * 0.15,
              // color: Colors.red,
              // padding: EdgeInsets.only(left: w * 0.01),
              // margin: EdgeInsets.only(left: w * 0.1),
            ),
            Positioned(
              child: Container(
                  margin: EdgeInsets.only(left: w * 0.03),
                  child: Image.asset("assets/images/logo-with-bg.png")),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            //color: Colors.black,
            image: DecorationImage(
              image: AssetImage("assets/images/Signin.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            margin: EdgeInsets.only(top: h * 0.1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //marginAll(20),
              children: [
                // Stack(
                //   children: [
                //     // Container(
                //     //     width: w * 0.28,
                //     //     height: h * 0.15,
                //     //     child: Center(
                //     //         child: Image.asset("assets/images/logo-with-bg.png")),
                //     //     decoration: BoxDecoration(
                //     //       borderRadius: BorderRadius.only(
                //     //         bottomRight: Radius.circular(w * 0.25),
                //     //       ),
                //     //     )),
                //     // topIcon(context)
                //     Container(
                //       width: w * 0.28,
                //       height: h * 0.15,
                //       // color: Colors.red,
                //     ),
                //     Positioned(
                //       child: Image.asset("assets/images/logo-with-bg.png"),
                //     )
                //   ],
                // ),

                // Center(
                //   child: Container(
                //     // alignment: Alignment.center,

                //     child: CustomPaint(
                //       painter: MyPinkPainter(),
                //       child: CustomButtonTryNow(
                //         TextButton(
                //             onPressed: () {},
                //             child: CustomTextNoProperty(
                //               "Boozimba Membership",
                //               fontSize: 16,
                //             )),
                //         width: 0.60,
                //         height: 0.07,
                //       ),
                //     ),
                //   ),
                // ),
                Center(
                  child: Container(
                    // alignment: Alignment.center,

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
                InkWell(
                  onTap: () => Get.to(MembershipDetailsPlatiunumView()),
                  child: Container(
                    margin: EdgeInsets.all(20),
                    child: CustomPaint(
                        painter: MyCustomPainter(PrimaryPurple),
                        child: MembershipContainerPurple()),
                  ),
                ),
                InkWell(
                  onTap: () => Get.to(() => MembershipDetailsDiamondView()),
                  child: Container(
                    margin: EdgeInsets.all(20),
                    child: CustomPaint(
                        painter: MyPinkPainter(), child: MembershipContainer()),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: CustomPaint(
                      painter: MyCustomPainter(PrimaryGolden),
                      child: MembershipContainerGolden()),
                ),
                //SizedBox(height: 12,),
                Container(
                  margin: EdgeInsets.all(20),
                  child: CustomPaint(
                      painter: MyCustomPainter(PrimarySilver),
                      child: MembershipContainerSilver()),
                ),
                // InkWell(
                //   onTap: () => Get.to(MembershipDetailsPlatiunumView()),
                //   child: Container(
                //     margin: EdgeInsets.all(20),
                //     child: CustomPaint(
                //         painter: MyCustomPainter(PrimaryPurple),
                //         child: MembershipContainerPurple()),
                //   ),
                // ),
                // InkWell(
                //   onTap: () => Get.to(() => MembershipDetailsDiamondView()),
                //   child: Container(
                //     margin: EdgeInsets.all(20),
                //     child: CustomPaint(
                //         painter: MyPinkPainter(), child: MembershipContainer()),
                //   ),
                // ),
                // Container(
                //   margin: EdgeInsets.all(20),
                //   child: CustomPaint(
                //       painter: MyCustomPainter(PrimaryGolden),
                //       child: MembershipContainerGolden()),
                // ),
                // //SizedBox(height: 12,),
                // Container(
                //   margin: EdgeInsets.all(20),
                //   child: CustomPaint(
                //       painter: MyCustomPainter(PrimarySilver),
                //       child: MembershipContainerSilver()),
                // ),
              ],
            ),
          ),
        ),
      ),
      //),
    );
  }

  Widget topIcon(BuildContext context) => Container(
      width: MediaQuery.of(context).size.width * 0.28,
      height: MediaQuery.of(context).size.height * 0.15,
      child: Center(child: Image.asset("assets/images/logo-with-bg.png")),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight:
              Radius.circular(MediaQuery.of(context).size.width * 0.25),
        ),
      ));
}
