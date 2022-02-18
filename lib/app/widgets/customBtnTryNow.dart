import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonTryNow extends StatefulWidget {
  CustomButtonTryNowState createState() => CustomButtonTryNowState();
  final Widget widgetChild;
  // final String route;
  double width;
  double height;

  CustomButtonTryNow(this.widgetChild, {this.width = 0.25, this.height = 0.05});
}

class CustomButtonTryNowState extends State<CustomButtonTryNow>
    with SingleTickerProviderStateMixin {
  bool isZoom = false;
  late AnimationController _animationController;

  @override
  void initState() {
    // TODO: implement initState
    isZoom = true;
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

  OnTapCancel() {
    _animationController.reverse();
  }

  OnTapDown(TapDownDetails details) {
    _animationController.forward();
  }

  OnTapUp(TapUpDetails details) {
    _animationController.reverse();
  }

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   _controller.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    var scale = 1 + _animationController.value;

    return GestureDetector(
      onTap: () {
        if (isZoom) {
          _animationController.forward();
          Get.toNamed("/overview");
          isZoom = false;
        } else {
          _animationController.reverse();
          isZoom = true;
        }
      },
      onTapDown: OnTapDown,
      onTapUp: OnTapUp,
      onTapCancel: OnTapCancel,
      child: Transform.scale(
        scale: scale,
        child: Container(
          child: widget.widgetChild,
          width: w * widget.width,
          height: h * widget.height,
          alignment: Alignment.center,
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
        ),
      ),
    );

    // return Container(
    // width: w * widget.width,
    // height: h * widget.height,
    //   alignment: Alignment.center,
    //   child: GestureDetector(
    //       onTapDown: _onTapDown,
    //       onTapUp: _onTapUp,
    //       child: Transform.scale(scale: _scale, child: widget.widgetChild)),
    // decoration: BoxDecoration(
    //   borderRadius: BorderRadius.circular(12),
    //   //color: Colors.black,
    //   shape: BoxShape.rectangle,
    //   border: Border.all(
    //     style: BorderStyle.solid,
    //     color: Colors.white,
    //     width: 1.5,
    //   ),
    // ),
    // );
  }

  // void _onTapDown(TapDownDetails details) {
  //   _controller.forward();
  // }

  // void _onTapUp(TapUpDetails details) {
  //   _controller.reverse();
  // }
}
