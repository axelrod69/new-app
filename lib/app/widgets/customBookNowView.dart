import 'dart:ui';

import 'package:boozimba/app/utils/CustomColors.dart';
import 'package:boozimba/app/widgets/customRatingBar.dart';
import 'package:boozimba/app/widgets/customYellowText.dart';
import 'package:boozimba/app/widgets/imagePreView.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'customTextNoProperty.dart';

class CustomBookNow extends StatefulWidget {
  final String title;
  final String address;
  final String description;
  final String description1;
  final double ratings;
  final double noOfCustomers;
  //Add list of facilities

  CustomBookNow(this.title, this.address, this.description, this.description1,
      this.ratings, this.noOfCustomers);

  @override
  State<CustomBookNow> createState() => _CustomBookNowState();
}

class _CustomBookNowState extends State<CustomBookNow> {
  bool opened = true;

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        AnimatedPositioned(
            duration: Duration(milliseconds: 300),
            // right: opened
            //     ? MediaQuery.of(context).size.width / 2 - 40.0
            //     : (MediaQuery.of(context).size.width / 2) - 120.0,
            left: opened ? 0.0 : MediaQuery.of(context).size.width * 0.29,
            top: opened ? 0.0 : MediaQuery.of(context).size.height * 0.0,
            child: _buildOption(
                SvgPicture.asset("assets/svgs/home.svg"), Colors.purple)),
        AnimatedPositioned(
            duration: Duration(milliseconds: 300),
            left: opened ? 0.0 : MediaQuery.of(context).size.width * 0.24,
            top: opened ? 0.0 : MediaQuery.of(context).size.height * 0.06,
            child: _buildOption(
                SvgPicture.asset("assets/svgs/search.svg"), Colors.green)),
        AnimatedPositioned(
            duration: Duration(milliseconds: 300),
            left: opened ? 0.0 : MediaQuery.of(context).size.width * 0.155,
            top: opened ? 0.0 : MediaQuery.of(context).size.height * 0.11,
            child: _buildOption(
                SvgPicture.asset("assets/svgs/notification.svg"),
                Colors.green)),
        AnimatedPositioned(
            duration: Duration(milliseconds: 300),
            left: opened ? 0.0 : MediaQuery.of(context).size.width * 0.04,
            top: opened ? 0.0 : MediaQuery.of(context).size.height * 0.147,
            child: _buildOption(
                SvgPicture.asset("assets/svgs/user.svg"), Colors.brown)),
        Positioned(
          left: 0,
          top: 0,
          child: AnimatedSwitcher(
            duration: Duration(milliseconds: 200),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return ScaleTransition(child: child, scale: animation);
            },
            child: opened
                ? InkWell(
                    key: UniqueKey(),
                    child: Stack(
                      children: [
                        SvgPicture.asset(
                          "assets/svgs/logo-with-bg.svg",
                          // color: Colors.b,
                        ),
                        Padding(
                            padding: EdgeInsets.all(w * 0.04),
                            child: Image.asset("assets/icons/logo.png"))
                      ],
                    ),
                    onTap: () {
                      setState(() {
                        opened = false;
                      });
                    })
                : InkWell(
                    key: UniqueKey(),
                    child: Stack(
                      children: [
                        SvgPicture.asset(
                          "assets/svgs/logo-with-bg.svg",
                          // color: Colors.b,
                        ),
                        Padding(
                            padding: EdgeInsets.all(w * 0.04),
                            child: Image.asset("assets/icons/logo.png"))
                      ],
                    ),
                    onTap: () {
                      setState(() {
                        opened = true;
                      });
                    }),
          ),
        ),

        // Container(
        //     width: w * 0.28,
        //     height: h * 0.15,
        //     child: Center(child: Image.asset("assets/images/logo-with-bg.png")),
        //     decoration: BoxDecoration(
        //       borderRadius: BorderRadius.only(
        //         bottomRight: Radius.circular(w * 0.25),
        //       ),
        //     )),
        Container(
          // margin: EdgeInsets.only(
          //   top: 70,
          // ),
          padding: EdgeInsets.only(top: h * 0.1),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Image.asset(
                  //   "assets/icons/fast-food.png",
                  //   height: 32,
                  //   color: Colors.white,
                  // ),

                  Icon(
                    Icons.local_bar,
                    size: w * 0.1,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CustomTextNoProperty(
                    widget.title,
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
                  CustomRatingBar(widget.ratings),
                  SizedBox(
                    width: w * 0.1,
                  ),
                  Text(
                    widget.address,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontFamily: "Segoe",
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: PrimaryAccentColor,
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
        Container(
          // alignment: Alignment.center,
          padding: EdgeInsets.only(
            top: h * 0.2,
          ),

          //width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: getDescription(widget.description),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                child: MyYellowText(
                  "Gallery",
                  fontSize: 24,
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Hero(
                    tag: "pubImages",
                    child: InkWell(
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
              Container(
                height: h * 0.30,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16),
                child: MyYellowText(
                  "Facility",
                  fontSize: 24,
                ),
              ),
              getFacilities(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: getDescription1(widget.description1),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 12.0, horizontal: 16.0),
                child: MyYellowText(
                  "Menu",
                  fontSize: 24,
                ),
              ),
              Container(
                height: h * 0.30,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16),
                child: MyYellowText(
                  "Customer Reviews",
                  fontSize: 24,
                ),
              ),
              getRatings(widget.ratings, context),
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

Container getFacilities() {
  return Container(
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            "assets/icons/cocktail.png",
            color: PrimaryAccentColor,
            height: 48,
          ),
          Image.asset(
            "assets/icons/fast-food.png",
            color: PrimaryAccentColor,
            height: 48,
          ),
          Image.asset(
            "assets/icons/cocktail.png",
            color: PrimaryAccentColor,
            height: 48,
          ),
          Icon(
            Icons.wifi,
            color: PrimaryAccentColor,
            size: 32,
          )
        ],
      ),
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

// class ImagePreViewWidget extends StatelessWidget {
//   final List<String>? images = [
//     "https://www.fabhotels.com/blog/wp-content/uploads/2018/10/Irish-House.jpg",
//     "https://www.jointhegrid.in/wp-content/uploads/2018/05/Lego_Bar-1.jpg",
//     "https://www.dineout.co.in/blog/wp-content/uploads/2019/08/1505109_300571723430399_1477425614_n-700x400.jpg"
//   ];

//   // ImagePreViewWidget({this.images});
//   @override
//   Widget build(BuildContext context) {
//     return Hero(
//       tag: "pubImages",
//       child: PageView.builder(
//         itemCount: images!.length,
//         itemBuilder: (context, index) {
//           return Container(
//             child: Image.network(images![index]),
//           );
//         },
//       ),
//     );
//   }
// }
