import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CircularMenu extends StatefulWidget {
  CircularMenuState createState() => CircularMenuState();
}

class CircularMenuState extends State<CircularMenu> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FabCircularMenuState> fabKey = GlobalKey();

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    bool _pressed = false;

    // TODO: implement build
    return Scaffold(
      floatingActionButton: Builder(
        key: fabKey,
        builder: (context) => FabCircularMenu(
          onDisplayChange: (isOpen) {
            isOpen ? _pressed = true : _pressed = false;
            print(_pressed);
            // setState(() {
            //   _pressed = !_pressed;
            // });
          },
          alignment: Alignment.topLeft,
          ringColor: Colors.transparent,
          ringDiameter: 300.0,
          ringWidth: 100.0,
          fabSize: 50.0,
          fabElevation: 8.0,
          fabColor: Colors.transparent,
          fabOpenIcon: Image.asset('assets/image/logo.png'),
          // fabCloseIcon: Image.asset('assets/image/logo.png'),
          fabCloseIcon: Image.asset('assets/image/logo.png'),
          fabMargin: const EdgeInsets.all(25.0),
          animationDuration: const Duration(milliseconds: 200),
          animationCurve: Curves.bounceIn,
          children: <Widget>[
            Padding(
              // padding: const EdgeInsets.all(8.0),
              padding:
                  EdgeInsets.only(right: width * 0.03, bottom: height * 0.08),
              child: RawMaterialButton(
                onPressed: () {
                  // _showSnackBar(context, _pressed.toString());
                },
                shape: CircleBorder(),
                // padding: const EdgeInsets.all(24.0),
                child: SvgPicture.asset('assets/svg/user.svg'),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(right: width * 0.07, bottom: height * 0.065),
              child: RawMaterialButton(
                onPressed: () {
                  // _showSnackBar(context, _pressed.toString());
                },
                shape: CircleBorder(),
                // padding: const EdgeInsets.all(24.0),
                child: SvgPicture.asset('assets/svg/notification.svg'),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(right: width * 0.1, bottom: height * 0.03),
              child: RawMaterialButton(
                onPressed: () {
                  // _showSnackBar(context, _pressed.toString());
                },
                shape: CircleBorder(),
                // padding: const EdgeInsets.all(24.0),
                child: SvgPicture.asset('assets/svg/search.svg'),
              ),
            ),
            // EdgeInsets.only(right: width * 0.1, bottom: height * 0.009),
            Padding(
              padding:
                  EdgeInsets.only(right: width * 0.1, bottom: height * 0.001),
              child: RawMaterialButton(
                onPressed: () {
                  // _showSnackBar(context, _pressed.toString());
                  // fabKey.currentState!.close();
                },
                shape: CircleBorder(),
                // padding: const EdgeInsets.all(24.0),
                // child: Icon(Icons.looks_4, color: Colors.white),
                child:
                    SvgPicture.asset('assets/svg/home.svg', color: Colors.blue),
              ),
            )
          ],
        ),
      ),
      // backgroundColor: const Color(0xFF192A56),
      body: Container(
        width: double.infinity,
        color: Colors.red,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: height * 0.2,
                  width: width * 0.4,
                  color: const Color.fromRGBO(252, 252, 252, 0.2),
                ),
                Positioned(
                  // top: height * 0.035,
                  // left: width * 0.07,
                  // child: _pressed
                  //     ? SvgPicture.asset('assets/svg/round-bg.svg')
                  //     : Container(color: Colors.yellow),
                  child: SvgPicture.asset('assets/svg/round-bg.svg',
                      color: Colors.transparent),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void _showSnackBar(BuildContext context, String message) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text(message),
      duration: const Duration(milliseconds: 1000),
    ));
  }
}
