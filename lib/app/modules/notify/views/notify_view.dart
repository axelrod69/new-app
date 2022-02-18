import 'package:boozimba/app/modules/notify/controllers/notify_controller.dart';
import 'package:boozimba/app/utils/CustomColors.dart';
import 'package:boozimba/app/utils/customNotifyBox.dart';
import 'package:boozimba/app/utils/myCustomPainter.dart';
import 'package:boozimba/app/widgets/customNotifyWidget.dart';
import 'package:boozimba/app/widgets/myArc.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class NotifyView extends GetView<NotifyController> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    final double circleRadius = 100.0;
    final double circleBorderWidth = 8.0;
    return Scaffold(
      /*appBar: AppBar(
        title: Text('Membership'),
        centerTitle: true,
      ),*/
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            // height: double.infinity,
            height: h * 1,
            width: double.infinity,
            decoration: BoxDecoration(
              //color: Colors.black,
              image: DecorationImage(
                image: AssetImage("assets/images/pubscreen2.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //marginAll(20),
              children: [
                Stack(
                  children: [
                    // Container(
                    //     width: w * 0.28,
                    //     height: h * 0.15,
                    //     child: Center(
                    //         child:
                    //             Image.asset("assets/images/logo-with-bg.png")),
                    //     decoration: BoxDecoration(
                    //       borderRadius: BorderRadius.only(
                    //         bottomRight: Radius.circular(w * 0.25),
                    //       ),
                    //     )),
                    Container(
                      width: w * 0.28,
                      height: h * 0.15,
                      // color: Colors.red,
                      // padding: EdgeInsets.only(left: w * 0.01),
                      // margin: EdgeInsets.only(left: w * 0.1),
                    ),
                    Positioned(
                      child: Container(
                          // margin: EdgeInsets.only(left: w * 0.03),
                          child: Image.asset("assets/images/logo-with-bg.png")),
                    ),
                    SizedBox(),

                    /* Container(
                      width: 10,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(w * 0.25),
                        ),
                        color: Colors.white,
                      ),
                    ),*/
                  ],
                ),
                /*Container(
                  margin: EdgeInsets.all(20),
                  child: CustomPaint(
                      painter: MyCustomPainter(
                          PrimaryPurple
                      ),
                      child: CustomNotifyWidget(
                      )
                  ),
                ),*/

                Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: circleRadius / 2.0),
                      child: Container(
                        margin: EdgeInsets.all(20),
                        child: CustomPaint(
                            painter: MyCustomPainter(PrimarySilver),
                            child: CustomNotifyWidget()),
                      ),
                    ),
                    Container(
                      width: circleRadius,
                      height: circleRadius,
                      margin: EdgeInsets.only(top: 12),
                      decoration: ShapeDecoration(
                        shape: CircleBorder(),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(circleBorderWidth),
                        child: DecoratedBox(
                          decoration: ShapeDecoration(
                              shape: CircleBorder(),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  "assets/icons/twitter.png",
                                  //fit: BoxFit.cover,
                                ),
                              )),
                        ),
                      ),
                    )
                  ],
                ),
                CustomPaint(
                  size: Size(
                      w,
                      (w * 0.625)
                          .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                  painter: RPSCustomPainter(),
                ),
                /*Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    _getDataConatiner(),
                    _getImage(),
                  ],
                ),*/
                //SizedBox(height: 12,),
              ],
            ),
          ),
        ),
      ),
      //),
    );
  }

  Container _getDataConatiner() {
    return Container(
      height: 250,
      width: 350,
      /*decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(5.0)
      ),*/
      margin: EdgeInsets.all(40),
      color: Colors.cyanAccent,
      /*child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(left: 16.0, right:16.0, top: 40),
            padding: EdgeInsets.all(16.0),
            decoration:BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
            ) ,
            child: Text("Email"),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(16.0),
            decoration:BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
            ) ,
            child: Text("Password"),
          ),
        ],
      ),*/
    );
  }

  Container _getImage() {
    return Container(
      width: 100,
      height: 100,
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
        //color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(50.0),
        ),
        // border: Border.all(color: Colors.cyanAccent, width: 8),
        /* image: DecorationImage(image: AssetImage("assets/icons/twitter.png"),
            fit: BoxFit.cover,
        ),*/
      ),
      child: Stack(
        children: [
          Container(alignment: Alignment.topCenter, child: MyArc()),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Image.asset(
                "assets/icons/twitter.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );

    /*Container(
      width: 100,
      height: 100,
      //alignment: Alignment.topCenter,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(50.0),),
        border: Border.all(color: Colors.cyanAccent, width: 8),
        image: DecorationImage(image: AssetImage("assets/icons/twitter.png"),
            fit: BoxFit.cover
        ),
      ),

    );*/
  }
}
