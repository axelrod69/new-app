import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/CustomColors.dart';
import '../utils/myPainter.dart';

class CustomTextField extends StatefulWidget {
  CustomTextFieldState createState() => CustomTextFieldState();
  final String? label;
  // IconData icon;
  // final Widget? prifixIcon;
  final FormFieldValidator<String>? inputValidator;
  final double textScale;
  final bool obscureText;
  // final Alignment align;
  // bool isEnabled;
  CustomTextField(
      {this.label,
      // this.prifixIcon,
      this.inputValidator,
      required this.textScale,
      required this.obscureText});
}

class CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      // width: double.infinity,
      padding: EdgeInsets.only(left: w * 0.05, right: w * 0.05),
      child:

          // CustomPaint(
          //   painter: MyPainter(),
          //   child:

          CustomPaint(
        painter: MyPainter(),
        child: TextFormField(
          obscureText: widget.obscureText,
          //textAlign: TextAlign.center,
          //strutStyle: ,
          validator: widget.inputValidator,
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Segoe",
            fontWeight: FontWeight.w100,
            fontSize: 15 + widget.textScale,
          ),
          decoration: InputDecoration(
            // focusColor: Colors.yellow,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7.0),
              borderSide: BorderSide(
                color: Colors.white,
                width: 5,
              ),
            ),
            // labelText: label!,
            labelText: widget.label!,
            hintText: widget.label!,
            hintStyle: TextStyle(
                color: Colors.grey,
                fontFamily: "Segoe",
                fontWeight: FontWeight.w100,
                // fontSize: w * 0.032 + widget.textScale,
                fontSize: 15 + widget.textScale),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            labelStyle: TextStyle(
              color: Colors.white,
              fontFamily: "Segoe",
              fontWeight: FontWeight.w500,
              fontSize: w * 0.032 + widget.textScale,
            ),
            //isCollapsed: true,
            // suffixIcon: widget.prifixIcon!,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7.0),
              borderSide: BorderSide(
                color: Colors.white,
                width: 1.5,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(7.0),
              borderSide: BorderSide(
                color: Colors.white,
                width: 1.5,
              ),
            ),
            //icon: Icon(Icons.email,
            // ),
            //errorText: ("Invalid email"),
          ),
        ),
      ),
    );
  }
}

/*
* import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CustomTextField extends StatelessWidget {
  String label;
  IconData icon;
 // final Alignment align;
  //bool isEnabled;
  CustomTextField(this.label, this.icon);


  @override
  Widget build(BuildContext context) {
    return Container(
      //width: double.infinity,
      /*decoration: BoxDecoration(
        //shape: BoxShape.rectangle,
        //borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.lightGreenAccent.withAlpha(80),
              blurRadius: 12.0,
              spreadRadius: 10.0,
              offset: Offset(
                10.0,
                3.0,
              ),
              *//*color:Colors.lightGreen,//.withAlpha(90),
            blurRadius: 50.0,
            spreadRadius: 2.0,
            offset: Offset(
              0.0,
              3.0,
            ),*//*

            )]

      ),*/
      child: Container(
        height: 40,
        width: double.infinity,
        margin: EdgeInsets.all(12.0),
        child: TextFormField(
          //textAlign: TextAlign.center,
          //strutStyle: ,
          validator: (value){
            //isValidEmail(value);
          },
          style: TextStyle(
              color: Colors.white,
          ),
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                color: Colors.white,
                style: BorderStyle.solid
              )
            ),
            labelText: label,
            //isCollapsed: true,
            suffixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(icon,
                color: Colors.white,
              ),
            ),
            focusedBorder:OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide:  BorderSide(
                color: Colors.grey,

              ),
            ) ,
            enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide:  BorderSide(
                        color: Colors.grey,

                      ),
                    ),
            //icon: Icon(Icons.email,
            // ),
            //errorText: ("Invalid email"),
          ),

        ),
        /*decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black,
          shape: BoxShape.rectangle,
          border: Border.all(style: BorderStyle.solid, color: Colors.white, width: 2,
          ),
        ),*/
      ),
    );
  }
}

* */
