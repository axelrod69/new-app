import 'package:boozimba/app/modules/filtercategory/controllers/filter_category_controller.dart';
import 'package:boozimba/app/utils/CustomColors.dart';
import 'package:boozimba/app/utils/myCirclePainter.dart';
import 'package:boozimba/app/widgets/customBtnTryNow.dart';
import 'package:boozimba/app/widgets/customButton.dart';
import 'package:boozimba/app/widgets/customGridItem.dart';
import 'package:boozimba/app/widgets/customTextNoProperty.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class FilterCategoryView extends StatefulWidget {
  @override
  State<FilterCategoryView> createState() => _FilterCategoryViewState();
}

class _FilterCategoryViewState extends State<FilterCategoryView> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    bool isSwitched = true;
    bool _switchValue = true;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          //color: Colors.black,
          image: DecorationImage(
            image: AssetImage("assets/images/Signin.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Container(
                  //     width: w * 0.28,
                  //     height: h * 0.15,
                  //     child: Center(
                  //         child: Image.asset("assets/images/logo-with-bg.png")),
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.only(
                  //         bottomRight: Radius.circular(w * 0.25),
                  //       ),
                  //     )),

                  SizedBox(),
                ],
              ),
            ]),
            Container(
              // margin: EdgeInsets.only(top: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Filters",
                    style: GoogleFonts.badScript(
                        color: Colors.amberAccent, fontSize: 30),
                  ),
                  SizedBox(width: w * 0.55),
                  Text(
                    "Reset",
                    style: GoogleFonts.badScript(
                        color: Colors.amberAccent, fontSize: 25),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0, left: w * 0.08),
              child: Text(
                "Location",
                style: GoogleFonts.badScript(
                    color: Colors.amberAccent, fontSize: 20),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: w * 0.08, right: w * 0.08),
              child: Container(
                height: h * 0.08,
                child: TextFormField(
                  decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      hintText: "Search Location",
                      enabledBorder: OutlineInputBorder(

                          // width: 0.0 produces a thin "hairline" border
                          borderSide:
                              const BorderSide(color: Colors.white, width: 2.5),
                          borderRadius: BorderRadius.circular(10)),
                      focusColor: Colors.white,
                      border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.white, width: 2.5),
                          borderRadius: BorderRadius.circular(10)),
                      hintStyle: GoogleFonts.roboto(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.bold,
                          fontSize: w * 0.06)),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Only Near Me",
                  style: GoogleFonts.badScript(
                      color: Colors.amberAccent, fontSize: 20),
                ),
                SizedBox(
                  width: w * 0.4,
                ),
                CupertinoSwitch(
                  activeColor: Colors.white,
                  thumbColor: PrimaryOrange,
                  value: _switchValue,
                  onChanged: (value) {
                    setState(() {
                      _switchValue = value;
                    });
                  },
                ),
              ],
            ),
            Center(
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 24.0, left: 16.0, bottom: 8),
                child: Text(
                  "Category",
                  style: GoogleFonts.badScript(
                    color: Colors.amberAccent,
                    fontSize: w * 0.08,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomGridItem(
                    svgPath: "assets/svgs/music.svg",
                    name: "Music",
                  ),
                  CustomGridItem(
                    svgPath: "assets/svgs/drinks.svg",
                    name: "Drinks",
                  ),
                  CustomGridItem(
                    svgPath: "assets/svgs/gamepad.svg",
                    name: "Game",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 6),
                    child: CustomGridItem(
                      svgPath: "assets/svgs/food.svg",
                      name: "Food",
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 5.0),
                    child: CustomGridItem(
                      svgPath: "assets/svgs/mic.svg",
                      name: "Live Music",
                    ),
                  ),
                  CustomGridItem(
                    svgPath: "assets/svgs/dance-floor.svg",
                    name: "Dance Floor",
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 12),
              alignment: Alignment.center,
              child: CustomPaint(
                painter: MyPinkPainter(),
                child: CustomButtom(
                    TextButton(
                        onPressed: () {},
                        child: CustomTextNoProperty(
                          "Apply Now",
                        )),
                    ''),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
