import 'package:boozimba/app/modules/Details/controllers/detail_controller.dart';
import 'package:boozimba/app/widgets/customHome.dart';
import 'package:boozimba/app/widgets/customHomeDetails.dart';
import 'package:boozimba/app/widgets/custom_menu_arc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_arc_speed_dial/flutter_arc_speed_dial.dart';
import 'package:flutter_arc_speed_dial/flutter_speed_dial_menu_button.dart';
import 'package:flutter_arc_speed_dial/main_menu_floating_action_button.dart';
import 'package:get/get.dart';

//2,3.4,5.png
class HomeDetailsView extends GetView<DetailsController> {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
        /* appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),*/
        body: SafeArea(
      child: CustomMenuArc(
        Container(
          decoration: BoxDecoration(
            // color: Colors.black,
            image: DecorationImage(
              image: AssetImage("assets/images/pub screen 1 (6).png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  Container(
                      width: w * 0.50,
                      height: h * 0.15,
                      child: Image.asset("assets/images/logo-with-bg.png"),
                      decoration: BoxDecoration(
                        // color: Colors.red,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(w * 0.25),
                        ),
                      )),
                  SizedBox(),
                ],
              ),
              Expanded(
                  child: Align(
                      alignment: Alignment.bottomCenter,
                      child: CustomHomeDetails())),
            ],
          ),
        ),
      ),
    ));
  }
}
