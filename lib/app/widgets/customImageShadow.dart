import 'package:flutter/material.dart';

class ImageShadow extends StatefulWidget {
  ImageShadowState createState() => ImageShadowState();
  final Widget childWidget;


  ImageShadow(this.childWidget);
}

class ImageShadowState extends State<ImageShadow>
    with SingleTickerProviderStateMixin {
  bool isZoom=false;
  late AnimationController _animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    isZoom=true;
    _animationController = AnimationController(
        duration: Duration(milliseconds: 50),
        vsync: this,
        lowerBound: 0.0,
        upperBound: 0.1)
      ..addListener(() {

        setState(() {});
      });
  }

  OnTapDown(TapDownDetails details) {
    _animationController.forward();
  }

  OnTapUp(TapUpDetails details) {
    _animationController.reverse();
  }

  OnTapCancel() {
    _animationController.reverse();
  }

  @override
  Widget build(BuildContext context) {
    var scale = 1 + _animationController.value;
    return /*Container(
      //width: 100,
      //height: 100,
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          child: childWidget,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(color: Colors.orangeAccent.withAlpha(80), blurRadius: 12.0),
                ],
                shape: BoxShape.circle,
                */ /*image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://images.theconversation.com/files/93616/original/image-20150902-6700-t2axrz.jpg')
                )*/ /*
            )
        ),
      ),
    );*/
        GestureDetector(
          onTap: (){
            if(isZoom) {
              _animationController.forward();
              isZoom=false;
            }
           else{
            _animationController.reverse();
            isZoom=true;
           }


          },

      onTapDown: OnTapDown,
      onTapUp: OnTapUp,
      onTapCancel: OnTapCancel,
      child: Transform.scale(
        scale: scale,
        child: Container(
          child: widget.childWidget,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),
              //shape: BoxShape.rectangle,
              boxShadow: [
                BoxShadow(
                  color: Colors.orangeAccent.withAlpha(80),
                  blurRadius: 22.0,
                  spreadRadius: 2.0,
                  offset: Offset(
                    0.0,
                    3.0,
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
