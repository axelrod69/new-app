import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtom extends StatefulWidget {
  CustomButtomState createState() => CustomButtomState();

  final Widget widgetChild;
  final String route;

  CustomButtom(this.widgetChild, this.route);
}

class CustomButtomState extends State<CustomButtom>
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

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   _animationController.dispose();
  //   super.dispose();
  // }

  OnTapCancel() {
    _animationController.reverse();
  }

  OnTapDown(TapDownDetails details) {
    _animationController.forward();
  }

  OnTapUp(TapUpDetails details) {
    _animationController.reverse();
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    var scale = 1 + _animationController.value;

    return GestureDetector(
      onTap: () {
        if (isZoom) {
          _animationController.forward().then((value) => Get.toNamed('/home'));
          // Get.toNamed('/home');
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
          width: w * 0.30,
          height: h * 0.06,
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
  }
}
