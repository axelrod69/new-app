import 'package:boozimba/app/utils/curvedAppBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../modules/membership/views/membership_details_platinum_view.dart';
import '../modules/membership/views/membership_details_silver_view.dart';
import '../modules/membership/views/membership_diamond_view.dart';
import './profilePage_favourite.dart';
import './profileLastPub.dart';
import '../utils/myPinkPainter.dart';
import './customButton.dart';
import './customTextNoProperty.dart';
import './logOutButton.dart';
import './logOutButtonClick.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ProfilePage extends StatefulWidget {
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.bottom]);
    final height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final width = MediaQuery.of(context).size.width;
    final textScale = MediaQuery.of(context).textScaleFactor * 1.2;

    // TODO: implement build
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: Container(
        width: double.infinity,
        height: height * 0.15,
        // color: Colors.yellow,
        child: Stack(
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
            // topIcon(context)
            Container(
              width: width * 0.28,
              height: height * 0.15,
              // color: Colors.red,
              // padding: EdgeInsets.only(left: w * 0.01),
              // margin: EdgeInsets.only(left: w * 0.1),
            ),
            Positioned(
              child: Container(
                  margin: EdgeInsets.only(left: width * 0.03),
                  child: Image.asset("assets/images/logo-with-bg.png")),
            )
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/Membership – Platinum.png'))),
        child: ListView(
          children: [
            Stack(
              children: [
                // ClipPath(
                //   clipper: CurvedAppBar(),
                //   child: Container(
                //     height: height * 0.25,
                //     width: double.infinity,
                //     decoration: BoxDecoration(
                //         gradient: LinearGradient(
                //             begin: Alignment.topLeft,
                //             end: Alignment.bottomRight,
                //             colors: [
                //           Color.fromRGBO(254, 215, 94, 1),
                //           Color.fromRGBO(240, 127, 231, 1)
                //         ])),
                //   ),
                // ),
                Container(
                  height: height * 0.32,
                  width: double.infinity,
                  // color: Colors.white,
                  decoration: BoxDecoration(
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: Colors.black,
                      //     spreadRadius: 5,
                      //     blurRadius: 10,
                      //     offset: Offset(0,)
                      //   )
                      // ],
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/shape_01.png'))),
                ),
                // Container(width: width * 0.28, height: height * 0.15),
                // Positioned(
                //   child: Image.asset("assets/images/logo-with-bg.png"),
                // ),

                Positioned(
                  // top: height * 0.09,
                  top: height * 0.065,
                  // left: width * 0.15,
                  left: width * 0.12,
                  child: Container(
                    // color: Colors.red,
                    height: height * 0.16,
                    // width: width * 0.25,
                    width: width * 0.2,
                    // color: Colors.red,
                    // padding: EdgeInsets.only(bottom: height * 0.0),
                    // padding: EdgeInsets.only(
                    //     left: width * 0.02, right: width * 0.02),
                    child: Stack(
                      children: [
                        Container(
                          width: width * 0.25,
                          height: height * 0.15,
                          // color: Colors.yellow,
                          // child: CircleAvatar(
                          //   backgroundColor: Colors.white,
                          //   radius: 100,
                          // ),
                          child: CircularPercentIndicator(
                            radius: 92,
                            percent: 0.7,
                            progressColor: Colors.blue,
                            lineWidth: 3,
                            backgroundColor: Colors.transparent,
                            center: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 85,
                              backgroundImage: NetworkImage(
                                  'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                              // child: Image.network(
                              //   'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                              //   fit: BoxFit.cover,
                              // ),
                            ),
                          ),
                          // decoration: BoxDecoration(
                          //     color: Colors.white,
                          //     borderRadius: BorderRadius.only(
                          //         topLeft: Radius.circular(100),
                          //         topRight: Radius.circular(100),
                          //         bottomLeft: Radius.circular(100),
                          //         bottomRight: Radius.circular(100))),
                        ),
                        Positioned(
                          // top: height * 0.1,
                          left: width * 0.12,
                          bottom: height * 0.03,
                          child: Container(
                            height: height * 0.04,
                            width: width * 0.08,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(73, 72, 73, 0.4),
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Icon(Icons.camera_alt_rounded,
                                color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                    // bottom: height * 0.02,
                    bottom: height * 0.07,
                    // left: width * 0.12,
                    left: width * 0.08,
                    child: Row(
                      children: [
                        Icon(Icons.upgrade, color: Colors.white),
                        SizedBox(
                          height: height * 0.06,
                        ),
                        Text(
                          'Upgrade Now',
                          textScaleFactor: textScale,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        )
                      ],
                    )),
                Positioned(
                  // top: height * 0.08,
                  top: height * 0.1,
                  // left: width * 0.365,
                  left: width * 0.34,
                  child: Container(
                    width: width * 0.614,
                    height: height * 0.1,
                    // color: Colors.red,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(right: width * 0.02),
                          child: Row(
                            children: [
                              Text(
                                'Tahmid Sen',
                                textScaleFactor: textScale,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    shadows: [
                                      Shadow(
                                          color: Colors.black,
                                          blurRadius: 20,
                                          offset: Offset(0, 2))
                                    ]),
                              ),
                              InkWell(
                                onTap: () =>
                                    Get.to(() => MembershipDetailsSilverView()),
                                child: SvgPicture.asset(
                                    'assets/svgs/silver.svg',
                                    height: 29,
                                    width: 29,
                                    color: Color.fromRGBO(220, 218, 218, 1)),
                              ),
                              InkWell(
                                onTap: () => Get.to(
                                    () => MembershipDetailsDiamondView()),
                                child: SvgPicture.asset('assets/svgs/gold.svg',
                                    height: 29,
                                    width: 29,
                                    color: Colors.yellow),
                              ),
                              InkWell(
                                onTap: () =>
                                    Get.to(() => MembershipDetailsDiamondView),
                                child: SvgPicture.asset(
                                    'assets/svgs/diamond.svg',
                                    height: 29,
                                    width: 29,
                                    color: Colors.blue),
                              ),
                              InkWell(
                                onTap: () => Get.to(
                                    () => MembershipDetailsPlatiunumView),
                                child: SvgPicture.asset(
                                    'assets/svgs/platinum.svg',
                                    height: 29,
                                    width: 29,
                                    color: Colors.green),
                              )
                            ],
                          ),
                        ),
                        // SizedBox(height: height * 0.005),
                        Row(
                          children: [
                            Icon(Icons.email, color: Colors.white),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            Text(
                              'info@boozimba.com',
                              textScaleFactor: textScale,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: width * 0.01,
                            ),
                            Icon(
                              Icons.edit,
                              color: Colors.white,
                              size: 20,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: height * 0.05),
            Padding(
              padding: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
              child: Container(
                width: width * 0.9,
                height: height * 0.2,
                padding: EdgeInsets.only(
                  left: width * 0.05,
                  top: height * 0.02,
                  right: width * 0.02,
                  // bottom: height * 0.02
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromRGBO(213, 167, 251, 1),
                          Color.fromRGBO(172, 185, 243, 1)
                        ])),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Your Clans',
                      textScaleFactor: textScale,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                          shadows: [
                            Shadow(
                              color: Colors.black,
                              blurRadius: 20,
                              offset: Offset(0, 2),
                            )
                          ]),
                    ),
                    SizedBox(height: height * 0.01),
                    Row(
                      children: [
                        Icon(Icons.group, color: Colors.white),
                        SizedBox(width: width * 0.02),
                        Text(
                          'Favourite Clan - XYZ Clan',
                          textScaleFactor: textScale,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              shadows: [
                                Shadow(
                                    color: Colors.black,
                                    blurRadius: 15,
                                    offset: Offset(0, 2))
                              ]),
                        )
                      ],
                    ),
                    // SizedBox(height: 0.09),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.only(left: width * 0.08),
                      margin: EdgeInsets.only(top: height * 0.02),
                      // height: height * 0.05,
                      // color: Colors.red,
                      child: Row(
                        children: [
                          Text(
                            'More Clans',
                            textScaleFactor: textScale,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                      color: Colors.black,
                                      blurRadius: 20,
                                      offset: Offset(0, 2))
                                ]),
                          ),
                          SizedBox(width: width * 0.02),
                          Container(
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                    color: Colors.black,
                                    spreadRadius: 10,
                                    blurRadius: 80,
                                    offset: Offset(0, 2))
                              ]),
                              child: Icon(
                                Icons.arrow_circle_down,
                                color: Colors.white,
                                size: 20,
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: width * 0.08, bottom: height * 0.01),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Favourite Pub',
                    textScaleFactor: textScale,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        shadows: [
                          Shadow(
                              color: Colors.red,
                              blurRadius: 30,
                              offset: Offset(0, 2))
                        ]),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.035),
              child: Container(
                width: double.infinity,
                height: height * 0.25,
                child: ProfilePageFavourite(),
              ),
            ),
            SizedBox(height: height * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: width * 0.08),
                  child: Text(
                    'Last Visited Pub',
                    textScaleFactor: textScale,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        shadows: [
                          Shadow(
                              color: Colors.red,
                              blurRadius: 30,
                              offset: Offset(0, 2))
                        ]),
                  ),
                ),
              ],
            ),
            SizedBox(height: height * 0.02),
            Container(
                height: height * 0.6,
                width: double.infinity,
                // color: Colors.red,
                padding:
                    EdgeInsets.only(left: width * 0.035, right: width * 0.035),
                child: ProfileLastPub()),
            SizedBox(
              height: height * 0.09,
            ),
            Container(
              alignment: Alignment.center,
              // width: width * 0.1,
              // color: Colors.red,
              // padding: EdgeInsets.only(left: width * 0.05, right: width * 0.05),
              child: CustomPaint(
                painter: LogOutButton(),
                child: LogOutButtonClick(Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.logout_rounded, color: Colors.white),
                    SizedBox(width: width * 0.02),
                    Text(
                      'Log Out',
                      textScaleFactor: textScale,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                                color: Colors.red,
                                blurRadius: 10,
                                offset: Offset(0, 2))
                          ]),
                    )
                  ],
                )),
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
          ],
        ),
      ),
    );
  }
}
