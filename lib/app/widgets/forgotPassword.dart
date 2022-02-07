import 'package:boozimba/app/utils/CustomColors.dart';
import 'package:boozimba/app/utils/myCirclePainter.dart';
import 'package:boozimba/app/utils/signIn_signUp.dart';
import 'package:boozimba/app/widgets/customButton.dart';
import 'package:boozimba/app/widgets/customImageShadow.dart';
import 'package:boozimba/app/widgets/customTextFieldSignIn.dart';
import 'package:boozimba/app/widgets/customTextNoProperty.dart';
import 'package:boozimba/app/widgets/customTextWidget.dart';
import 'package:boozimba/app/widgets/greenTextWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPassword extends StatefulWidget {
  ForgotPasswordState createState() => ForgotPasswordState();
}

class ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    final textScale = MediaQuery.of(context).textScaleFactor * 1.5;
    bool _isClicked = false;
    bool _passwordVisible = true;

    // TODO: implement build
    return Scaffold(
        body: Container(
      height: h,
      decoration: BoxDecoration(
        //color: Colors.black,
        image: DecorationImage(
          image: AssetImage("assets/images/Signin.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          ListView(
            children: [
              SizedBox(
                height: h * 0.1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //This is the customized widget meant to work as the back button
                  Container(
                    height: 30,
                    width: 35,
                    padding: EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 1),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(6),
                            topRight: Radius.circular(6),
                            bottomLeft: Radius.circular(6),
                            bottomRight: Radius.circular(6))),
                    child: CustomPaint(
                      painter: SignBoxPainter(),
                      child: Icon(Icons.arrow_back_ios, //This here is the icon
                          color: Colors.white,
                          size: 15),
                    ),
                  ),
                  SizedBox(
                    width: w * 0.05,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: CustomGreenText("Sign In", PrimaryColor, textScale),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText("Sign in with one of the following option ",
                      PrimaryColor, textScale),
                  SizedBox(height: h * 0.02),
                ],
              ),
              SizedBox(
                height: h * 0.01,
              ),
              Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText("E-mail", PrimaryColor, textScale),
                    CustomTextFieldSignIn(
                      textScale: textScale,
                      obscureText: false,
                      label: "Enter Your Mail ID",
                      prifixIcon: Container(
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                              color: Colors.red,
                              blurRadius: 30,
                              spreadRadius: 1,
                              offset: Offset(1, 1))
                        ]),
                        child: Icon(
                          Icons.mark_email_read_rounded,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    CustomText("Password", PrimaryColor, textScale),
                    CustomTextFieldSignIn(
                      obscureText: _passwordVisible,
                      textScale: textScale,
                      label: "Enter Your Password",
                      prifixIcon: IconButton(
                        icon: Container(
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                                color: Colors.red,
                                blurRadius: 30,
                                spreadRadius: 1,
                                offset: Offset(0, 0))
                          ]),
                          child: Icon(
                            _passwordVisible
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.grey,
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.only(right: 22, bottom: 12, top: 6),
                child: Text(
                  "Forgot Password?",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      color: PrimaryAccentColor,
                      fontFamily: "Segoe",
                      fontWeight: FontWeight.w100,
                      fontStyle: FontStyle.normal,
                      fontSize: 15 + textScale),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                alignment: Alignment.center,
                child: CustomPaint(
                  painter: MyPinkPainter(),
                  child: CustomButtom(CustomTextNoProperty('Sign In')),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 24),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(
                          color: PrimaryAccentColor,
                          fontFamily: "Segoe",
                          fontWeight: FontWeight.w100,
                          fontStyle: FontStyle.normal,
                          fontSize: 15 + textScale),
                    ),
                    //This here is the text that navigates to the Sign Up page
                    InkWell(
                      onTap: () => Get.toNamed("/sign-up"),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.white,
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
                height: h * 0.08,
                // height: 45,
                // color: Colors.red,
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
          )
        ],
      ),
    ));
  }
}
