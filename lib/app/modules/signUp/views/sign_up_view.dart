import 'package:boozimba/app/modules/signIn/views/sign_in_view.dart';
import 'package:boozimba/app/utils/signIn_signUp.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:boozimba/app/widgets/greenTextWidget.dart';
import 'package:boozimba/app/widgets/customTextWidget.dart';
import 'package:boozimba/app/widgets/customTextField.dart';
import 'package:boozimba/app/utils/CustomColors.dart';
import 'package:boozimba/app/widgets/customButton.dart';
import 'package:boozimba/app/utils/myPinkPainter.dart';
import 'package:boozimba/app/widgets/customImageShadow.dart';
import 'package:boozimba/app/widgets/customTextNoProperty.dart';
import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    var textScale = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      /*appBar: AppBar(
        title: Text('SignUpView'),
        centerTitle: true,
      ),*/
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            //color: Colors.black,
            image: DecorationImage(
              image: AssetImage("assets/images/Signin.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Container(
                      //     width: w * 0.28,
                      //     height: h * 0.15,
                      //     child: Center(
                      //         child: Image.asset(
                      //             "assets/images/logo-with-bg.png")),
                      //     decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.only(
                      //         bottomRight: Radius.circular(w * 0.25),
                      //       ),
                      //     )),
                      // Container(
                      //   width: 10,
                      //   height: 10,
                      //   decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.only(
                      //       bottomRight: Radius.circular(w * 0.25),
                      //     ),
                      //     color: Colors.white,
                      //   ),
                      // ),
                      Container(
                        margin: EdgeInsets.only(top: 40),
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Image.asset(
                            //   "assets/images/button.png",
                            //   fit: BoxFit.cover,
                            //   height: 30,
                            // ),
                            // ),
                            Container(
                              height: 30,
                              width: 35,
                              padding: EdgeInsets.only(left: w * 0.001),
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.white, width: 1),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(6),
                                      topRight: Radius.circular(6),
                                      bottomLeft: Radius.circular(6),
                                      bottomRight: Radius.circular(6))),
                              child: CustomPaint(
                                  painter: SignBoxPainter(),
                                  child: InkWell(
                                    onTap: () => Get.back(),
                                    child: Icon(
                                      Icons.keyboard_arrow_left_outlined,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  )),
                            ),
                            SizedBox(
                              width: w * 0.018,
                            ),
                            CustomGreenText("Sign Up", PrimaryColor, textScale),
                          ],
                        ),
                      ),
                    ],
                  ),
                  CustomText("Create Account", PrimaryColor, textScale),
                  SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.only(left: 45),
                    child: Text(
                      "Sign up with one of the following option ",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: h * 0.020),
                  Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText("Name", PrimaryColor, textScale),
                        CustomTextField(
                          textScale: textScale,
                          obscureText: false,
                          label: "Enter Your Full Name",
                          // prifixIcon:
                          //     Image.asset("assets/icons/password.png")
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        CustomText("Email", PrimaryColor, textScale),
                        CustomTextField(
                          textScale: textScale,
                          obscureText: false,
                          label: "Enter Your Mail ID",
                          // prifixIcon:
                          //     Image.asset("assets/icons/password.png")
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        // SizedBox(height: 8,),
                        CustomText("Password", PrimaryColor, textScale),
                        CustomTextField(
                          textScale: textScale,
                          obscureText: false,
                          label: "Pick a Strong Password",
                          // prifixIcon:
                          //     Image.asset("assets/icons/password.png")
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        CustomText("Mobile No.", PrimaryColor, textScale),
                        CustomTextField(
                          textScale: textScale,
                          obscureText: false,
                          label: "Enter Your Phone No.",
                          // prifixIcon:
                          //     Image.asset("assets/icons/password.png")
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: h * 0.035,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 12),
                    alignment: Alignment.center,
                    child: CustomPaint(
                      painter: MyPinkPainter(),
                      child: CustomButtom(
                          // TextButton(
                          //     onPressed: () => Get.toNamed("/home"),
                          //     child: CustomTextNoProperty(
                          //       "Sign Up",
                          //     )),
                          InkWell(
                        onTap: () => Get.toNamed("/home"),
                        child: CustomTextNoProperty('Sign Up'),
                      )),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 24),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account? ",
                          style: TextStyle(
                              color: PrimaryAccentColor,
                              fontFamily: "Segoe",
                              fontWeight: FontWeight.w100,
                              fontStyle: FontStyle.normal,
                              fontSize: 15 + textScale),
                        ),
                        InkWell(
                          onTap: () => Get.toNamed("/sign-in"),
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                                color: PrimaryAccentColor,
                                fontFamily: "Segoe",
                                fontWeight: FontWeight.bold,
                                fontSize: 15 + textScale),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Or Connect With",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: PrimaryAccentColor,
                          fontFamily: "Segoe",
                          fontWeight: FontWeight.w100,
                          fontStyle: FontStyle.normal,
                          fontSize: 15 + textScale),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 45,
                    margin: EdgeInsets.only(left: 20, right: 20, bottom: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ImageShadow(
                          Image.asset("assets/icons/google.png"),
                        ),
                        ImageShadow(
                          Image.asset(
                            "assets/icons/apple.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        ImageShadow(Image.asset(
                          "assets/icons/facebook.png",
                          fit: BoxFit.cover,
                        )),
                        ImageShadow(Image.asset(
                          "assets/icons/twitter.png",
                          fit: BoxFit.cover,
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
