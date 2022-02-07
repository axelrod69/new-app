import 'package:boozimba/app/modules/Details/controllers/detail_controller.dart';
import 'package:boozimba/app/widgets/customHome.dart';
import 'package:boozimba/app/widgets/customHomeDetails.dart';
import 'package:boozimba/app/widgets/custom_menu_arc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_arc_speed_dial/flutter_arc_speed_dial.dart';
import 'package:flutter_arc_speed_dial/flutter_speed_dial_menu_button.dart';
import 'package:flutter_arc_speed_dial/main_menu_floating_action_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomeDetailsView extends StatefulWidget {
  HomeDetailsViewState createState() => HomeDetailsViewState();
}

//2,3.4,5.png
// class HomeDetailsView extends GetView<DetailsController>
class HomeDetailsViewState extends State<HomeDetailsView> {
  bool pressed = false;

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
        body: CustomMenuArc(
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
                Stack(
                  children: [
                    Container(
                        width: w * 0.50,
                        height: h * 0.15,
                        // child: Image.asset("assets/images/logo-with-bg.png"),
                        // child: Image.asset("assets/icons/logo.png"),
                        decoration: BoxDecoration(
                          // color: Colors.red,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(w * 0.25),
                          ),
                        )),
                    Positioned(
                      child: pressed
                          ? IconButton(
                              onPressed: () => setState(() {
                                    pressed = !pressed;
                                  }),
                              icon: Image.asset(
                                'assets/icons/logo.png',
                                height: 100,
                                width: 100,
                              ))
                          // ? Image.asset("assets/icons/logo.png")

                          : InkWell(
                              onTap: () => setState(() {
                                pressed = !pressed;
                                print(pressed);
                              }),
                              child: Stack(
                                children: [
                                  SvgPicture.asset('assets/svgs/round-bg.svg'),
                                  Positioned(
                                    left: w * 0.05,
                                    top: h * 0.02,
                                    child: Image.asset("assets/icons/logo.png"),
                                  )
                                ],
                              ),
                            ),
                    )
                  ],
                ),
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
    ));
  }
}
