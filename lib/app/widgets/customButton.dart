import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtom extends StatefulWidget {
  CustomButtomState createState() => CustomButtomState();

  final Widget widgetChild;

  CustomButtom(this.widgetChild);
}

class CustomButtomState extends State<CustomButtom>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    // TODO: implement initState
    _animationController = AnimationController(
        duration: Duration(milliseconds: 10),
        vsync: this,
        lowerBound: 0.0,
        upperBound: 0.1)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }

  // OnTapCancel() {
  //   _animationController.reverse();
  // }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    var scale = 1 - _animationController.value;
    return Container(
      width: w * 0.30,
      height: h * 0.06,
      // height: h * 0.07,
      alignment: Alignment.center,
      child: GestureDetector(
          onDoubleTapDown: OnTapDown,
          onTapUp: OnTapUp,
          child: Transform.scale(scale: scale, child: widget.widgetChild)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        //color: Colors.black,
        shape: BoxShape.rectangle,
        border: Border.all(
          style: BorderStyle.solid,
          color: Colors.white,
          width: 1.5,
        ),
      ),
    );
  }

  void OnTapDown(TapDownDetails details) {
    _animationController.forward();
  }

  void OnTapUp(TapUpDetails details) {
    _animationController.reverse();
  }
}
