import 'package:boozimba/app/modules/Details/controllers/detail_controller.dart';
import 'package:boozimba/app/modules/booking/view/booking_view.dart';
import 'package:boozimba/app/modules/home/controllers/home_tab_controller.dart';
import 'package:boozimba/app/utils/CustomColors.dart';
import 'package:boozimba/app/widgets/customHome.dart';
import 'package:boozimba/app/widgets/customHomeDetails.dart';
import 'package:boozimba/app/widgets/customTextNoProperty.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';

//9,10.png
class HomeTabView extends StatefulWidget {
  final String? backgroundImagePath;

  HomeTabView({this.backgroundImagePath});
  @override
  State<HomeTabView> createState() => _HomeTabViewState();
}

class _HomeTabViewState extends State<HomeTabView> {
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
        /* appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),*/
        body: Container(
      decoration: BoxDecoration(
        //color: Colors.black,
        image: DecorationImage(
          image: AssetImage(widget.backgroundImagePath!),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        // mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: CustomHomeDetails())),
        ],
      ),
    ));
  }
}
