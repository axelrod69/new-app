import 'package:boozimba/app/modules/overview/controllers/overview_controller.dart';
import 'package:boozimba/app/utils/CustomColors.dart';
import 'package:boozimba/app/utils/myCirclePainter.dart';
import 'package:boozimba/app/utils/myCustomPainter.dart';
import 'package:boozimba/app/widgets/customBtnTryNow.dart';
import 'package:boozimba/app/widgets/customOverview.dart';
import 'package:boozimba/app/widgets/customTextNoProperty.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';


class OverViewView extends GetView<OverViewController>{
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
                image: AssetImage("assets/images/Signin.png"),
                fit: BoxFit.cover,
              ),
            ),

            child: Column(
              mainAxisSize: MainAxisSize.max,
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
                          painter: MyCustomPainter(PrimarySilver),
                          child: CustomButtonTryNow(
                            CustomTextNoProperty(
                              "Your Overview",
                              color: PrimarySilver,
                            ),
                            // ),
                            width: 0.55,
                            height: 0.06,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                CustomOverview("https://www.ahstatic.com/photos/7962_rsr001_00_p_1024x768.jpg", "Sollicitudin", "Lorem ipsum dolor sit ametEt sint ullam qui dolorem odit qui nobis  eum ", ratings: 3.5, address: "Maidan Kolkata",)
              ],
            ),
          ),
        ),
      ),
    );
  }


}