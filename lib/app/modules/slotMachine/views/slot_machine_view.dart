// ignore_for_file: deprecated_member_use

import 'dart:async';
import 'dart:math';

import 'package:boozimba/app/utils/CustomColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roller_list/roller_list.dart';

import '../controllers/slot_machine_controller.dart';
import 'package:audioplayers/audioplayers.dart';


class SlotMachineView extends StatefulWidget {
  @override
  State<SlotMachineView> createState() => _SlotMachineViewState();
}

class _SlotMachineViewState extends State<SlotMachineView> {
  bool onPressedValue = true;
  static List<Widget> _getSlots() {
    List<Widget> result = [];
    for (int i = 0; i <= 9; i++) {
      result.add(Container(
        // padding: const EdgeInsets.all(4.0),
        // color: Colors.white,
        child: SvgPicture.asset(
          "assets/svgs/slot-icon/new/$i.svg",
          width: 50,
          height: 50,
        ),
      ));
    }
    return result;
  }

  static List<Widget> _getMoodSlots() {
    List<Widget> result = [];
    for (int i = 0; i <= 3; i++) {
      result.add(Container(
        // padding: const EdgeInsets.all(4.0),
        // color: Colors.white,
        child: SvgPicture.asset(
          "assets/svgs/slot-icon/Ambiance/$i.svg",
          width: 50,
          height: 50,
        ),
      ));
    }
    return result;
  }

  static List<Widget> _getFoodSlots() {
    List<Widget> result = [];
    for (int i = 0; i <= 3; i++) {
      result.add(Container(
        // padding: const EdgeInsets.all(4.0),
        // color: Colors.white,
        child: SvgPicture.asset(
          "assets/svgs/slot-icon/Food/$i.svg",
          width: 50,
          height: 50,
        ),
      ));
    }
    return result;
  }

  static List<Widget> _getDrinkSlots() {
    List<Widget> result = [];
    for (int i = 0; i <= 3; i++) {
      result.add(Container(
        // padding: const EdgeInsets.all(4.0),
        // color: Colors.white,
        child: SvgPicture.asset(
          "assets/svgs/slot-icon/Drinks/$i.svg",
          width: 50,
          height: 50,
        ),
      ));
    }
    return result;
  }

  List<String> foodNameList = [
    "Biriyani",
    "Fries",
    "Chicken wings",
    "Continental"
  ];

  List<String> drinksNameList = [
    "Cocktails",
    "Craft Beers",
    "Shots",
    "Whiskey"
  ];
  List<String> moodNameList = ["Billiard", "Romantic", "Dance", "Hard Rock"];

  var slots = _getSlots();
  var foodSlots = _getFoodSlots();
  var drinkSlots = _getDrinkSlots();

  var moodSlots = _getMoodSlots();

  int first = 0, second = 0, third = 0;
  final leftRoller = GlobalKey<RollerListState>();
  final middleRoller = GlobalKey<RollerListState>();
  final rightRoller = GlobalKey<RollerListState>();
  Timer? rotator;
  Duration _ROTATION_DURATION = Duration(milliseconds: 220);

  final _random = Random();

  void _startRotating() {
    rotator = Timer.periodic(_ROTATION_DURATION,
        _rotateRoller); //let's use timer to do rotations periodically
  }

  void _startRotatingLeftRoller() {
    rotator = Timer.periodic(_ROTATION_DURATION, _rotateLeftRoller);
  }

  void _rotateLeftRoller(_) {
    print("left work"+_ROTATION_DURATION.toString());
    final leftRotationTarget = _random.nextInt(4 * foodSlots.length);
    leftRoller.currentState!.smoothScrollToIndex(leftRotationTarget,
        duration: _ROTATION_DURATION, curve: Curves.linear);
    soundEffect();
   // Vibration.vibrate(duration: 100);
  }

  void _startRotatingMiddleRoller() {
    rotator = Timer.periodic(_ROTATION_DURATION, _rotateMiddleRoller);
  }

  void _rotateMiddleRoller(_) {
    final middleRotationTarget = _random.nextInt(3 * drinkSlots.length);
    middleRoller.currentState!.smoothScrollToIndex(middleRotationTarget,
        duration: _ROTATION_DURATION, curve: Curves.linear);
    soundEffect();
    //Vibration.vibrate(duration: 100);
  }

  void _startRotatingRightRoller() {
    rotator = Timer.periodic(_ROTATION_DURATION, _rotateRightRoller);
  }

  void _rotateRightRoller(_) {
    final rightRotationTarget = _random.nextInt(3 * moodSlots.length);
    rightRoller.currentState!.smoothScrollToIndex(rightRotationTarget,
        duration: _ROTATION_DURATION, curve: Curves.linear);
    soundEffect();
    //Vibration.vibrate(duration: 100);
  }

  void _rotateRoller(_) {
    final leftRotationTarget = _random.nextInt(3 * foodSlots.length);
    final middleRotationTarget = _random.nextInt(3 * drinkSlots.length);
    final rightRotationTarget = _random.nextInt(3 * moodSlots.length);
    leftRoller.currentState!.smoothScrollToIndex(leftRotationTarget,
        duration: _ROTATION_DURATION,
        curve: Curves
            .linear); //it is possible to select custom duration and curve for this animation
    middleRoller.currentState!.smoothScrollToIndex(middleRotationTarget,
        duration: _ROTATION_DURATION,
        curve: Curves
            .linear); //it is possible to select custom duration and curve for this animation
    rightRoller.currentState!.smoothScrollToIndex(rightRotationTarget,
        duration: _ROTATION_DURATION, curve: Curves.linear);
    //soundEffect();
    //Vibration.vibrate(duration: 100);
  }

  Future<AudioPlayer> soundEffect() async {
    AudioCache cache = new AudioCache();

    return await cache.play('slotMachineSound.mp3');
    //return await cache.seek(Duration(milliseconds: 1200);
  }

  void _finishRotating() {

    print("finished rotaing");
    rotator?.cancel();
  }

  Future<void> _navigateTo(BuildContext context) async {
    await Get.toNamed("/home");
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(systemNavigationBarColor: Colors.transparent));
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var responsive =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;

    return Scaffold(
        body: RefreshIndicator(
      onRefresh: () => _navigateTo(context),
      child: Container(
        height: height * 1,
        width: width * 1,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/Membership – Platinum.png"),
          fit: BoxFit.cover,
        )),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.15,
                  right: MediaQuery.of(context).size.width * 0.15),
              child: Container(
                  height: (MediaQuery.of(context).size.height -
                          MediaQuery.of(context).padding.top) *
                      0.065,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: Colors.greenAccent, width: 2.5),
                  ),
                  child: Center(
                      child: Text(
                    "Choose Your Combination",
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold, color: Colors.greenAccent),
                  ))),
            ),
            Container(
              height: (MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top) *
                  0.935,
              child: Stack(
                children: [
                  Center(child: Image.asset("assets/images/slot_machines.png")),
                  Positioned(
                    top: responsive * 0.088,
                    left: width * 0.055,
                    child: Container(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.15),
                      // color: Colors.red,
                      child: TextButton(
                          onPressed: onPressedValue == true
                              ? () {
                                  setState(() {
                                    onPressedValue = false;
                                  });
                                  Timer(Duration(seconds: 2), () {
                                    setState(() {
                                      onPressedValue = true;
                                    });
                                  });

                                  _startRotating();
                                  Timer.periodic(Duration(milliseconds: 10000),
                                      (Timer t) => _finishRotating());
                                }
                              : null,
                          child: Text(
                            "SPIN ALL",
                            style: TextStyle(
                                shadows: [
                                  Shadow(
                                      color: Color.fromRGBO(0, 24, 152, 1),
                                      blurRadius: 2,
                                      offset: Offset(0, 0))
                                ],
                                foreground: Paint()
                                  ..strokeWidth = 2
                                  ..color = Color.fromRGBO(0, 24, 152, 1)
                                  ..style = PaintingStyle.fill
                                  ..maskFilter =
                                      MaskFilter.blur(BlurStyle.inner, 2),
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ),
                  Positioned(
                    top: responsive * 0.088,
                    left: width * 0.38,
                    child: Container(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.15),
                      child: TextButton(
                          onPressed: onPressedValue == true
                              ? () {
                                  setState(() {
                                    onPressedValue = false;
                                  });
                                  Timer(Duration(seconds: 2), () {
                                    setState(() {
                                      onPressedValue = true;
                                    });
                                  });

                                  _startRotating();
                                  Timer.periodic(Duration(milliseconds: 10000),
                                      (Timer t) => _finishRotating());
                                }
                              : null,
                          child: Text(
                            "BOOZIMBA SPIN",
                            style: TextStyle(
                                shadows: [
                                  Shadow(
                                      color: Color.fromRGBO(0, 24, 152, 1),
                                      blurRadius: 2,
                                      offset: Offset(0, 0))
                                ],
                                foreground: Paint()
                                  ..strokeWidth = 2
                                  ..color = Color.fromRGBO(0, 24, 152, 1)
                                  ..style = PaintingStyle.fill
                                  ..maskFilter =
                                      MaskFilter.blur(BlurStyle.inner, 2),
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: MediaQuery.of(context).size.width * 0.01,
                        bottom: MediaQuery.of(context).size.height * 0.2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: width * 0.012),
                          child: RollerList(
                            dividerThickness: 0.01,
                            items:
                                foodSlots, // images are the same on all rollers
                            enabled: false, //it is disabled
                            key:
                                leftRoller, // we will roll it programmatically using GlobalKey
                            onSelectedIndexChanged: (value) {
                              setState(() {
                                first =
                                    value; // it is required to show the result
                              });
                            },
                          ),
                        ),
                        VerticalDivider(
                          width: MediaQuery.of(context).size.width * 0.13,
                        ),
                        RollerList(
                          dividerThickness: 0.01,
                          key: middleRoller,
                          enabled: false,
                          items: drinkSlots,
                          onSelectedIndexChanged: (value) {
                            setState(() {
                              second = value;
                            });
                          },
                        ),
                        VerticalDivider(
                          width: MediaQuery.of(context).size.width * 0.13,
                        ),
                        RollerList(
                          dividerThickness: 0.01,
                          items: moodSlots,
                          key: rightRoller,
                          onSelectedIndexChanged: (value) {
                            setState(() {
                              third = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    // top: height * 0.5,
                    top: responsive * 0.52,
                    left: width * 0.142,
                    child: Container(
                      child: TextButton(
                          onPressed: onPressedValue == true
                              ? () {
                                  setState(() {
                                    onPressedValue = false;
                                  });
                                  Timer(Duration(seconds: 2), () {
                                    setState(() {
                                      onPressedValue = true;
                                    });
                                  });

                                  _startRotatingLeftRoller();
                                  Timer.periodic(Duration(milliseconds: 10000),
                                      (Timer t) => _finishRotating());
                                }
                              : null,
                          child: Text(
                            "SPIN",
                            style: TextStyle(
                                shadows: [
                                  Shadow(
                                      color: Color.fromRGBO(0, 24, 152, 1),
                                      blurRadius: 2,
                                      offset: Offset(0, 0))
                                ],
                                foreground: Paint()
                                  ..strokeWidth = 2
                                  ..color = Color.fromRGBO(0, 24, 152, 1)
                                  ..style = PaintingStyle.fill
                                  ..maskFilter =
                                      MaskFilter.blur(BlurStyle.inner, 2),
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ),
                  Positioned(
                    // top: height * 0.5,
                    top: responsive * 0.52,
                    left: width * 0.425,
                    child: Container(
                      child: TextButton(
                          onPressed: onPressedValue == true
                              ? () {
                                  setState(() {
                                    onPressedValue = false;
                                  });
                                  Timer(Duration(seconds: 2), () {
                                    setState(() {
                                      onPressedValue = true;
                                    });
                                  });

                                  _startRotatingMiddleRoller();
                                  Timer.periodic(Duration(milliseconds: 10000),
                                      (Timer t) => _finishRotating());
                                }
                              : null,
                          child: Text(
                            "SPIN",
                            style: TextStyle(
                                shadows: [
                                  Shadow(
                                      color: Color.fromRGBO(0, 24, 152, 1),
                                      blurRadius: 2,
                                      offset: Offset(0, 0))
                                ],
                                foreground: Paint()
                                  ..strokeWidth = 2
                                  ..color = Color.fromRGBO(0, 24, 152, 1)
                                  ..style = PaintingStyle.fill
                                  ..maskFilter =
                                      MaskFilter.blur(BlurStyle.inner, 2),
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                  ),
                  Positioned(
                    // top: height * 0.5,
                    top: responsive * 0.52,
                    left: width * 0.705,
                    child: Container(
                      child: TextButton(
                          onPressed: onPressedValue == true
                              ? () {
                                  setState(() {
                                    onPressedValue = false;
                                  });
                                  Timer(Duration(seconds: 2), () {
                                    setState(() {
                                      onPressedValue = true;
                                    });
                                  });

                                  _startRotatingRightRoller();
                                  Timer.periodic(Duration(milliseconds: 10000),
                                      (Timer t) => _finishRotating());
                                }
                              : null,
                          child: Text(
                            "SPIN",
                            style: TextStyle(
                                // color: Color.fromRGBO(0, 24, 152, 1),
                                shadows: [
                                  Shadow(
                                      color: Color.fromRGBO(0, 24, 152, 1),
                                      blurRadius: 2,
                                      offset: Offset(0, 0))
                                ],
                                foreground: Paint()
                                  ..strokeWidth = 2
                                  ..color = Color.fromRGBO(0, 24, 152, 1)
                                  ..style = PaintingStyle.fill
                                  ..maskFilter =
                                      MaskFilter.blur(BlurStyle.inner, 2),
                                fontWeight: FontWeight.bold),
                            // style: GoogleFonts.roboto(
                            //     color: Colors.black,
                            //     fontWeight: FontWeight.bold),
                          )),
                    ),
                  ),
                  Positioned(
                    top: (MediaQuery.of(context).size.height -
                            MediaQuery.of(context).padding.top) *
                        0.583,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width * 0.18,
                          right: MediaQuery.of(context).size.width * 0.15),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.7,
                        height: MediaQuery.of(context).size.height * 0.065,
                        // color: Color.fromRGBO(246, 195, 201, 0.1),
                        child: InkWell(
                          onTap: () => Get.toNamed("/home"),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        // top: MediaQuery.of(context).size.height * 0.7,
                        top: (MediaQuery.of(context).size.height -
                                MediaQuery.of(context).padding.top) *
                            0.636,
                        left: MediaQuery.of(context).size.width * 0.13),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(
                                color: Colors.blueAccent, width: 2.5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              foodSlots[first],
                              SizedBox(
                                width: 10,
                              ),
                              Text(foodNameList[first],
                                  style: GoogleFonts.roboto(
                                      color: Colors.yellowAccent,
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.04,
                                      fontWeight: FontWeight.w800))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(
                                color: Colors.blueAccent, width: 2.5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              drinkSlots[second],
                              SizedBox(
                                width: 10,
                              ),
                              Text(drinksNameList[second],
                                  style: GoogleFonts.roboto(
                                      color: Colors.yellowAccent,
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.04,
                                      fontWeight: FontWeight.w800))
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(
                                color: Colors.blueAccent, width: 2.5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              moodSlots[third],
                              SizedBox(
                                width: 10,
                              ),
                              Text(moodNameList[third],
                                  style: GoogleFonts.roboto(
                                      color: Colors.yellowAccent,
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                              0.04,
                                      fontWeight: FontWeight.w800))
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
