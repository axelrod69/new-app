import 'dart:ui';

import 'package:boozimba/app/modules/booking/view/booking_details_view.dart';
import 'package:boozimba/app/utils/CustomColors.dart';
import 'package:boozimba/app/widgets/customBookNowView.dart';
import 'package:boozimba/app/widgets/customRatingBar.dart';
import 'package:boozimba/app/widgets/customTextNoProperty.dart';
import 'package:boozimba/app/widgets/customYellowText.dart';
import 'package:boozimba/app/widgets/imagePreView.dart';
import 'package:boozimba/app/widgets/manu_tile.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:boozimba/app/utils/signIn_signUp.dart';


//16.png
class BookingView extends StatefulWidget {
  @override
  State<BookingView> createState() => _BookingViewState();
}

class _BookingViewState extends State<BookingView> {
  bool opened = true;

  bool isIconButtonpressd = false;

  void _facilityButtonClicked() {
    setState(() => isIconButtonpressd = !isIconButtonpressd);
    print(isIconButtonpressd);
  }

  Container getFacilities() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          isIconButtonpressd
              ? InkWell(
                  onTap: _facilityButtonClicked,
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                    child: SvgPicture.asset(
                      "assets/svgs/music-gutiar.svg",
                      height: 48,
                      color: PrimaryAccentColor,
                    ),
                  ),
                )
              : InkWell(
                  onTap: _facilityButtonClicked,
                  child: SvgPicture.asset(
                    "assets/svgs/music-gutiar.svg",
                    height: 48,
                    color: PrimaryAccentColor,
                  ),
                ),

          isIconButtonpressd
              ? InkWell(
                  onTap: _facilityButtonClicked,
                  child: SvgPicture.asset(
                    "assets/svgs/fast-food.svg",
                    height: 70,
                    color: PrimaryAccentColor,
                  ),
                )
              : InkWell(
                  onTap: _facilityButtonClicked,
                  child: SvgPicture.asset(
                    "assets/svgs/fast-food.svg",
                    height: 70,
                    color: PrimaryAccentColor,
                  ),
                ),

          isIconButtonpressd
              ? InkWell(
                  onTap: _facilityButtonClicked,
                  child: SvgPicture.asset(
                    "assets/svgs/cheers.svg",
                    height: 48,
                    color: PrimaryAccentColor,
                  ),
                )
              : InkWell(
                  onTap: _facilityButtonClicked,
                  child: SvgPicture.asset(
                    "assets/svgs/cheers.svg",
                    height: 48,
                    color: PrimaryAccentColor,
                  ),
                ),

          isIconButtonpressd
              ? InkWell(
                  onTap: _facilityButtonClicked,
                  child: SvgPicture.asset(
                    "assets/svgs/wifi.svg",
                    height: 48,
                    color: PrimaryAccentColor,
                  ),
                )
              : InkWell(
                  onTap: _facilityButtonClicked,
                  child: SvgPicture.asset(
                    "assets/svgs/wifi.svg",
                    height: 48,
                    color: PrimaryAccentColor,
                  ),
                )

          // SvgPicture.asset(
          //   "assets/svgs/wifi.svg",
          //   height: 48,
          //   color: PrimaryAccentColor,
          // )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Get.to(() => BookingDetailsView()),
        // icon: Icon(
        //   Icons.add,
        // ),
        // isExtended: true,
        label: Text("  Book Now  "),
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            side: BorderSide(color: Colors.white, width: 3.0)),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              //color: Colors.black,
              image: DecorationImage(
                image: AssetImage("assets/images/Membership.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    // AnimatedPositioned(
                    //     duration: Duration(milliseconds: 300),
                    //     // right: opened
                    //     //     ? MediaQuery.of(context).size.width / 2 - 40.0
                    //     //     : (MediaQuery.of(context).size.width / 2) - 120.0,
                    //     left: opened
                    //         ? 0.0
                    //         : MediaQuery.of(context).size.width * 0.29,
                    //     top: opened
                    //         ? 0.0
                    //         : MediaQuery.of(context).size.height * 0.0,
                    //     child: _buildOption(
                    //         SvgPicture.asset("assets/svgs/home.svg"),
                    //         Colors.purple)),
                    // AnimatedPositioned(
                    //     duration: Duration(milliseconds: 300),
                    //     left: opened
                    //         ? 0.0
                    //         : MediaQuery.of(context).size.width * 0.24,
                    //     top: opened
                    //         ? 0.0
                    //         : MediaQuery.of(context).size.height * 0.06,
                    //     child: _buildOption(
                    //         SvgPicture.asset("assets/svgs/search.svg"),
                    //         Colors.green)),
                    // AnimatedPositioned(
                    //     duration: Duration(milliseconds: 300),
                    //     left: opened
                    //         ? 0.0
                    //         : MediaQuery.of(context).size.width * 0.155,
                    //     top: opened
                    //         ? 0.0
                    //         : MediaQuery.of(context).size.height * 0.11,
                    //     child: _buildOption(
                    //         SvgPicture.asset("assets/svgs/notification.svg"),
                    //         Colors.green)),
                    // AnimatedPositioned(
                    //     duration: Duration(milliseconds: 300),
                    //     left: opened
                    //         ? 0.0
                    //         : MediaQuery.of(context).size.width * 0.04,
                    //     top: opened
                    //         ? 0.0
                    //         : MediaQuery.of(context).size.height * 0.147,
                    //     child: _buildOption(
                    //         SvgPicture.asset("assets/svgs/user.svg"),
                    //         Colors.brown)),
                    // Positioned(
                    //   left: 0,
                    //   top: 0,
                    //   child: AnimatedSwitcher(
                    //     duration: Duration(milliseconds: 200),
                    //     transitionBuilder:
                    //         (Widget child, Animation<double> animation) {
                    //       return ScaleTransition(
                    //           child: child, scale: animation);
                    //     },
                    //     child: opened
                    //         ? InkWell(
                    //             key: UniqueKey(),
                    //             child: Stack(
                    //               children: [
                    //                 SvgPicture.asset(
                    //                   "assets/svgs/logo-with-bg.svg",
                    //                   // color: Colors.b,
                    //                 ),
                    //                 Padding(
                    //                     padding: EdgeInsets.all(w * 0.04),
                    //                     child: Image.asset(
                    //                         "assets/icons/logo.png"))
                    //               ],
                    //             ),
                    //             onTap: () {
                    //               setState(() {
                    //                 opened = false;
                    //               });
                    //             })
                    //         : InkWell(
                    //             key: UniqueKey(),
                    //             child: Stack(
                    //               children: [
                    //                 SvgPicture.asset(
                    //                   "assets/svgs/logo-with-bg.svg",
                    //                   // color: Colors.b,
                    //                 ),
                    //                 Padding(
                    //                     padding: EdgeInsets.all(w * 0.04),
                    //                     child: Image.asset(
                    //                         "assets/icons/logo.png"))
                    //               ],
                    //             ),
                    //             onTap: () {
                    //               setState(() {
                    //                 opened = true;
                    //               });
                    //             }),
                    //   ),
                    // ),
                    // InkWell(
                    //   onTap: () => Get.toNamed("/slot-machine"),
                    //   child: Center(
                    //       child: SvgPicture.asset("assets/svgs/slot-icon.svg")),
                    // ),
                    Positioned(
                      top: h * 0.02,
                      left: w * 0.01,
                      child: Container(
                        height: h * 0.045,
                        width: w * 0.1,
                        padding: EdgeInsets.only(left: 5),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 1),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(6),
                                topRight: Radius.circular(6),
                                bottomLeft: Radius.circular(6),
                                bottomRight: Radius.circular(6))),
                        child: CustomPaint(
                          painter: SignBoxPainter(),
                          child:
                              Icon(Icons.arrow_back_ios, //This here is the icon
                                  color: Colors.white,
                                  size: 15),
                        ),
                      ),
                    ),
                    Positioned(
                      top: h * 0.12,
                      left: w * 0,
                      right: w * 0,
                      child: Container(
                        // padding: EdgeInsets.only(top: h * 0.2),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.local_bar,
                                  size: w * 0.1,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                CustomTextNoProperty(
                                  "Pallentesque",
                                  fontSize: 32,
                                )
                              ],
                            ),
                            SizedBox(
                              height: h * 0.01,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomRatingBar(4.5),
                                SizedBox(
                                  width: w * 0.045,
                                ),
                                // IconButton(
                                //   onPressed: () {},
                                //   icon: Icon(Icons.location_pin,
                                //       color: Colors.white),
                                // ),
                                Icon(Icons.location_pin, color: Colors.white),
                                TextButton(
                                  onPressed: () => Get.toNamed('/google-map'),
                                  child: Text(
                                    "Maidan, Kolkata",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontFamily: "Segoe",
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: PrimaryAccentColor,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: h * 0.01,
                            ),
                            Center(
                              child: Container(
                                height: h * 0.0001,
                                width: w * 0.75,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.rectangle,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(
                        top: h * 0.2,
                      ),

                      //width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: getDescription(
                              "Debo hacer para que yo construir tres hora todos los. Ambos van a una escuela.entonces necesitan gente  que yo construir tres hora todos los. Ambos van a una escuela.entonces necesitan",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 16),
                            child: MyYellowText(
                              "Gallery",
                              fontSize: 24,
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () => Get.to(() => ImagePreViewWidget()),
                                child: Container(
                                  height: h * 0.1,
                                  width: w * 0.25,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(
                                        3.0,
                                      )),
                                  // height: h * 0.1,
                                  child: Image.network(
                                    "https://www.fabhotels.com/blog/wp-content/uploads/2018/10/Irish-House.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: w * 0.02,
                              ),
                              InkWell(
                                onTap: () => Get.to(() => ImagePreViewWidget()),
                                child: Container(
                                  width: w * 0.25,
                                  height: h * 0.1,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(
                                        3.0,
                                      )),
                                  // height: h * 0.1,
                                  child: Image.network(
                                    "https://www.jointhegrid.in/wp-content/uploads/2018/05/Lego_Bar-1.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: w * 0.02,
                              ),
                              InkWell(
                                onTap: () => Get.to(() => ImagePreViewWidget()),
                                child: Container(
                                  width: w * 0.25,
                                  height: h * 0.1,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(
                                        3.0,
                                      )),
                                  // height: h * 0.1,
                                  child: Image.network(
                                    "https://www.dineout.co.in/blog/wp-content/uploads/2019/08/1505109_300571723430399_1477425614_n-700x400.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // SizedBox(
                          //   height: h * 0.0009,
                          // ),

                          // Align(
                          //   alignment: Alignment.centerRight,
                          //   child: ClipRRect(
                          //     borderRadius: BorderRadius.only(
                          //       topLeft: Radius.circular(6),
                          //       bottomLeft: Radius.circular(6),
                          //       topRight: Radius.zero,
                          //       bottomRight: Radius.zero,
                          //     ),
                          //     child: InkWell(
                          //       onTap: () {
                          //         print("book Now");
                          //       },
                          //       child: Container(
                          //         width: w * 0.25,
                          //         height: h * 0.055,
                          //         decoration: BoxDecoration(
                          //           color: Colors.transparent,
                          //           border: Border(
                          //             left: BorderSide(
                          //                 color: Colors.white,
                          //                 width: 2,
                          //                 style: BorderStyle.solid),
                          //             top: BorderSide(
                          //                 width: 2,
                          //                 color: Colors.white,
                          //                 style: BorderStyle.solid),
                          //             bottom: BorderSide(
                          //                 width: 2,
                          //                 color: Colors.white,
                          //                 style: BorderStyle.solid),
                          //             right: BorderSide.none,
                          //           ),
                          //         ),
                          //         child: Center(
                          //             child: Text(
                          //           "Book Now",
                          //           style: TextStyle(
                          //             fontFamily: "Segoe",
                          //             fontWeight: FontWeight.bold,
                          //             color: Colors.white,
                          //           ),
                          //         )),
                          //       ),
                          //     ),
                          //   ),
                          // ),

                          SizedBox(
                            height: h * 0.015,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () => Get.to(() => ImagePreViewWidget()),
                                child: Container(
                                  height: h * 0.1,
                                  width: w * 0.25,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(
                                        3.0,
                                      )),
                                  // height: h * 0.1,
                                  child: Image.network(
                                    "https://www.fabhotels.com/blog/wp-content/uploads/2018/10/Irish-House.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: w * 0.02,
                              ),
                              InkWell(
                                onTap: () => Get.to(() => ImagePreViewWidget()),
                                child: Container(
                                  width: w * 0.25,
                                  height: h * 0.1,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      borderRadius: BorderRadius.circular(
                                        3.0,
                                      )),
                                  // height: h * 0.1,
                                  child: Image.network(
                                    "https://www.jointhegrid.in/wp-content/uploads/2018/05/Lego_Bar-1.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: w * 0.02,
                              ),
                              InkWell(
                                onTap: () => Get.to(() => ImagePreViewWidget()),
                                child: Stack(
                                  children: [
                                    Container(
                                      width: w * 0.25,
                                      height: h * 0.1,
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.white),
                                          borderRadius: BorderRadius.circular(
                                            3.0,
                                          )),
                                      // height: h * 0.1,
                                      child: Stack(
                                        children: [
                                          Image.network(
                                            "https://www.dineout.co.in/blog/wp-content/uploads/2019/08/1505109_300571723430399_1477425614_n-700x400.jpg",
                                            fit: BoxFit.cover,
                                          ),
                                          Positioned(
                                            top: w * 0.25,
                                            bottom: w * 0.25,
                                            left: h * 0.1,
                                            right: h * 0.1,
                                            child: BackdropFilter(
                                              filter: ImageFilter.blur(
                                                  sigmaX: 2.0, sigmaY: 2.0),
                                              child: Container(
                                                color:
                                                    Colors.black.withOpacity(0),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                        width: w * 0.25,
                                        height: h * 0.1,
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.white),
                                            borderRadius: BorderRadius.circular(
                                              3.0,
                                            )),
                                        // height: h * 0.1,
                                        child: Center(
                                          child: Text(
                                            "+24",
                                            style: TextStyle(
                                              fontSize: w * 0.06,
                                              fontFamily: "Segoe",
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            ],
                          ),

                          // Expanded(
                          //   child: ListView(
                          //     shrinkWrap: true,
                          //     scrollDirection: Axis.horizontal,
                          //     children: [
                          //       Container(
                          //         height: h * 0.05,
                          //         width: w * 0.05,

                          //         // child: ,
                          //       )
                          //     ],
                          //   ),
                          // ),

                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 12.0, horizontal: 16),
                            child: MyYellowText(
                              "Facility",
                              fontSize: 24,
                            ),
                          ),
                          getFacilities(),
                          SizedBox(
                            height: h * 0.02,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: getDescription1(
                              "Debo hacer para que yo construir tres hora todos los. Ambos van a una escuela.entonces necesitan gente  que yo construir tres hora todos loss Ambos van a una escuela.entonces necesitan.Que yo construir tres hora todos los. Ambos van a una escuela.entonces necesitan gente",
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 12.0, horizontal: 16.0),
                            child: MyYellowText(
                              "Menu",
                              fontSize: 24,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: w * 0.05,
                              ),
                              Container(
                                height: h * 0.2,
                                width: w * 0.38,
                                child: RawScrollbar(
                                  thickness: 2,
                                  thumbColor: PrimaryGolden.withOpacity(0.25),
                                  radius: Radius.circular(50),
                                  minThumbLength: 5,

                                  // showTrackOnHover: true,
                                  // hoverThickness: 1,

                                  // isAlwaysShown: true,
                                  child: ListView(
                                    children: [
                                      MenuListTile(
                                        iconPath: "assets/svgs/main_course.svg",
                                        title: "Main Course",
                                      ),
                                      MenuListTile(
                                        iconPath: "assets/svgs/Dessert.svg",
                                        title: "Dessert",
                                      ),
                                      MenuListTile(
                                        iconPath: "assets/svgs/Mocktail.svg",
                                        title: "Mocktail",
                                      ),
                                      MenuListTile(
                                        iconPath:
                                            "assets/svgs/Cocktail_glass.svg",
                                        title: "Cocktail",
                                      ),
                                      MenuListTile(
                                        iconPath: "assets/svgs/fast-food.svg",
                                        title: "Fast Food",
                                      ),
                                      MenuListTile(
                                        iconPath: "assets/svgs/dance-floor.svg",
                                        title: "Dance Floor",
                                      ),
                                      MenuListTile(
                                        iconPath: "assets/svgs/Dessert.svg",
                                        title: "Dessert",
                                      ),
                                      MenuListTile(
                                        iconPath: "assets/svgs/dance-floor.svg",
                                        title: "Dance Floor",
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: w * 0.06,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () =>
                                        Get.to(() => ImagePreViewWidget()),
                                    child: Container(
                                      height: h * 0.08,
                                      width: w * 0.2,
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.white),
                                          borderRadius: BorderRadius.circular(
                                            3.0,
                                          )),
                                      // height: h * 0.1,
                                      child: Image.network(
                                        "https://www.fabhotels.com/blog/wp-content/uploads/2018/10/Irish-House.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: h * 0.02,
                                  ),
                                  InkWell(
                                    onTap: () =>
                                        Get.to(() => ImagePreViewWidget()),
                                    child: Container(
                                      height: h * 0.08,
                                      width: w * 0.2,
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.white),
                                          borderRadius: BorderRadius.circular(
                                            3.0,
                                          )),
                                      // height: h * 0.1,
                                      child: Image.network(
                                        "https://www.jointhegrid.in/wp-content/uploads/2018/05/Lego_Bar-1.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: w * 0.06,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () =>
                                        Get.to(() => ImagePreViewWidget()),
                                    child: Container(
                                      height: h * 0.08,
                                      width: w * 0.2,
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.white),
                                          borderRadius: BorderRadius.circular(
                                            3.0,
                                          )),
                                      // height: h * 0.1,
                                      child: Image.network(
                                        "https://www.fabhotels.com/blog/wp-content/uploads/2018/10/Irish-House.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: h * 0.02,
                                  ),
                                  InkWell(
                                    onTap: () =>
                                        Get.to(() => ImagePreViewWidget()),
                                    child: Stack(
                                      children: [
                                        Container(
                                          height: h * 0.08,
                                          width: w * 0.2,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.white),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                3.0,
                                              )),
                                          // height: h * 0.1,
                                          child: Stack(
                                            children: [
                                              Image.network(
                                                "https://www.dineout.co.in/blog/wp-content/uploads/2019/08/1505109_300571723430399_1477425614_n-700x400.jpg",
                                                fit: BoxFit.cover,
                                              ),
                                              Positioned(
                                                top: w * 0.25,
                                                bottom: w * 0.25,
                                                left: h * 0.1,
                                                right: h * 0.1,
                                                child: BackdropFilter(
                                                  filter: ImageFilter.blur(
                                                      sigmaX: 2.0, sigmaY: 2.0),
                                                  child: Container(
                                                    color: Colors.black
                                                        .withOpacity(0),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                            height: h * 0.08,
                                            width: w * 0.2,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.white),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  3.0,
                                                )),
                                            // height: h * 0.1,
                                            child: Center(
                                              child: Text(
                                                "+4",
                                                style: TextStyle(
                                                  fontSize: w * 0.06,
                                                  fontFamily: "Segoe",
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 12.0, horizontal: 16),
                            child: MyYellowText(
                              "Customer Reviews",
                              fontSize: 24,
                            ),
                          ),
                          getRatings(4.5, context),
                          Container(
                              margin: EdgeInsets.symmetric(vertical: 12),
                              child: Center(
                                  child: CustomTextNoProperty(
                                "250 Customer Ratings",
                              ))),
                          getRatingIndicator(90, 5),
                          getRatingIndicator(75, 4),
                          getRatingIndicator(60, 3),
                          getRatingIndicator(30, 2),
                          getRatingIndicator(0, 1),
                        ],
                      ),
                    ),
                  ],
                ),
                // CustomBookNow(
                //   "Pallentesque",
                //   "Maidan, Kolkata",
                //   "Debo hacer para que yo construir tres hora todos los. Ambos van a una escuela.entonces necesitan gente  que yo construir tres hora todos los."
                //       " Ambos van a una escuela.entonces necesitan",
                //   "Debo hacer para que yo construir tres hora todos los. Ambos van a una escuela.entonces necesitan gente  que yo construir tres hora todos los."
                //       " Ambos van a una escuela.entonces necesitan.Que yo construir tres hora todos los. Ambos van a una escuela.entonces necesitan gente",
                //   4.5,
                //   250,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildOption(Widget icon, Color iconColor) {
    return AnimatedSwitcher(
        duration: Duration(milliseconds: 300),
        transitionBuilder: (Widget child, Animation<double> animation) {
          return RotationTransition(child: child, turns: animation);
        },
        child: InkWell(
          key: UniqueKey(),
          child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                  height: 40.0,
                  width: 40.0,
                  // decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(25.0),
                  //     color: iconColor),
                  child: Center(child: icon))),
          onTap: () {
            setState(() {
              opened = false;
            });
          },
        ));
  }
}

Container getDescription(desc) {
  return Container(
    margin: EdgeInsets.all(16),
    child: Text(
      "Debo hacer para que yo construir tres hora todos los. Ambos van a una escuela.entonces necesitan gente  que yo construir tres hora todos los."
      " Ambos van a una escuela.entonces necesitan",
      style: TextStyle(
          fontFamily: "Segoe",
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: PrimaryAccentColor,
          letterSpacing: 0.5),
    ),
  );
}

Container getDescription1(desc) {
  return Container(
    child: Text(
      "Debo hacer para que yo construir tres hora todos los. Ambos van a una escuela.entonces necesitan gente  que yo construir tres hora todos los."
      " Ambos van a una escuela.entonces necesitan.Que yo construir tres hora todos los. Ambos van a una escuela.entonces necesitan gente",
      style: TextStyle(
          fontFamily: "Segoe",
          fontSize: 12,
          color: PrimaryAccentColor,
          letterSpacing: 0.5
          //fontWeight: FontWeight.w500
          ),
    ),
  );
}

Widget getRatings(double ratings, BuildContext context) {
  var w = MediaQuery.of(context).size.width;
  var h = MediaQuery.of(context).size.height;
  return Center(
    child: Container(
      width: w * 0.6,
      height: h * 0.06,
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(10),
        // shape: BoxShape.circle,
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.black45,
        //     spreadRadius: 3,
        //     blurRadius: 2,
        //   ),
        // ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomRatingBar(ratings),
          SizedBox(width: 20),

          // Text("$ratings Out Of 5", style: GoogleFonts.,)

          CustomTextNoProperty(
            "$ratings Out Of 5",
            fontSize: w * 0.04,
          )
        ],
      ),
    ),
  );
}

Container getRatingIndicator(var value, noOfStarts) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
    child: LinearPercentIndicator(
      //width: double.infinity - 20,
      //animation: true,
      lineHeight: 10.0,
      //animationDuration: 2000,
      percent: value / 100,
      trailing: Text(
        "${value}%",
        style: TextStyle(
            fontSize: 16, fontFamily: "Segoe", color: PrimaryAccentColor),
      ),
      leading: Text(
        "$noOfStarts star",
        style: TextStyle(
            fontSize: 16, fontFamily: "Segoe", color: PrimaryAccentColor),
      ),
      // center: Text("90.0%"),
      linearStrokeCap: LinearStrokeCap.roundAll,
      progressColor: PrimaryColor,
    ),
  );
}
