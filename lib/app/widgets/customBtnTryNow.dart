import 'package:flutter/material.dart';

class CustomButtonTryNow extends StatefulWidget {
  CustomButtonTryNowState createState() => CustomButtonTryNowState();
  final Widget widgetChild;
  double width;
  double height;
  CustomButtonTryNow(this.widgetChild, {this.width = 0.25, this.height = 0.05});
}

class CustomButtonTryNowState extends State<CustomButtonTryNow>
    with SingleTickerProviderStateMixin {
  late double _scale;
  late AnimationController _controller;

  @override
  void initState() {
    // TODO: implement initState
    _controller = AnimationController(
        vsync: this,
        duration: Duration(milliseconds: 10),
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
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    _scale = 1 - _controller.value;

    return Container(
      width: w * widget.width,
      height: h * widget.height,
      alignment: Alignment.center,
      child: GestureDetector(
          onTapDown: _onTapDown,
          onTapUp: _onTapUp,
          child: Transform.scale(scale: _scale, child: widget.widgetChild)),
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

  void _onTapDown(TapDownDetails details) {
    _controller.forward();
  }

  void _onTapUp(TapUpDetails details) {
    _controller.reverse();
  }
}
