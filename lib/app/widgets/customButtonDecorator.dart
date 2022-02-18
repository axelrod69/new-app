import 'package:flutter/material.dart';


class CustomButtonDecorator extends StatelessWidget {

 // final Widget child;

  //CustomButtonDecorator(this.child);
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Center(
      child: Container(
        width: w * 0.45,
        height: h * 0.08,
       // alignment: Alignment.center,
       // child: child,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
           // shape: BoxShape.rectangle,
            boxShadow: [
              BoxShadow(
                color: Colors.pinkAccent.withAlpha(80),
                blurRadius: 8.0,
                spreadRadius: 5.0,
                offset: Offset(
                  0.0,
                  3.0,
                ),
              ),

              /*BoxShadow(
                color: Colors.pinkAccent.withAlpha(60),
                blurRadius: 6.0,
                spreadRadius: 0.0,
                offset: Offset(
                  0.0,
                  3.0,
                ),
              ),*/
            ]),
      ),
    );
  }
}