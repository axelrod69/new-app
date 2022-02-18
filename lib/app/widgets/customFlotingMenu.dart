import 'package:boozimba/app/utils/painterTest.dart';
import 'package:circular_menu/circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter_svg/svg.dart';
//import 'package:flutter_custom_dialog/flutter_custom_dialog.dart';

class CustomView extends StatefulWidget {
  CustomView({Key? key}) : super(key: key);

  @override
  _CustomViewState createState() => _CustomViewState();
}

class _CustomViewState extends State<CustomView> {
// GlobalKey<CircularMenuState> circularkey = GlobalKey<CircularMenuState>();
  final GlobalKey<FabCircularMenuState> fabKey = GlobalKey();
//  YYDialog yYDialogDemo(BuildContext context) {
//    return YYDialog().build(context)
//      ..width = MediaQuery.of(context).size.width * 0.5
//      ..height = MediaQuery.of(context).size.height * 0.2
//      ..widget(ClipPath(
//        clipper: CustomShapeClass(),
//        child: Container(
//          width: MediaQuery.of(context).size.width * 0.5,
//          height: MediaQuery.of(context).size.height * 0.2,
//          color: Colors.black,
//          child: Center(child: Text("Fdfdef")),
//        ),
//      )
//
//          // Padding(
//          //   padding: EdgeInsets.all(0.0),
//          //   child: Align(
//          //     alignment: Alignment.centerLeft,
//          //     child: Text(
//          //       "Text Case",
//          //       style: TextStyle(
//          //         color: Colors.black,
//          //         fontSize: 14.0,
//          //         fontWeight: FontWeight.w100,
//          //       ),
//          //     ),
//          //   ),
//          // ),
//          )
//      ..show();
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FabCircularMenu(
        key: fabKey,
        // Cannot be `Alignment.center`
        alignment: Alignment.bottomRight,
        ringColor: Colors.transparent,
        ringDiameter: 200.0,
        ringWidth: 50.0,
        fabSize: MediaQuery.of(context).size.width * 0.1,
        fabElevation: 8.0,
        fabIconBorder: CircleBorder(),
        // Also can use specific color based on wether
        // the menu is open or not:
        // fabOpenColor: Colors.white
        // fabCloseColor: Colors.white
        // These properties take precedence over fabColor
        fabColor: Colors.white,
        fabOpenIcon: SvgPicture.asset(
          "assets/svgs/filter-icon.svg",
          // width: MediaQuery.of(context).size.width * 0.05,
          // height: MediaQuery.of(context).size.height * 0.06,
        ),
        // Icon(Icons.menu, color: Colors.black),
        fabCloseIcon: SvgPicture.asset("assets/svgs/sideBar.svg"),
        fabMargin: const EdgeInsets.all(16.0),
        animationDuration: const Duration(milliseconds: 800),
        animationCurve: Curves.easeInOutCirc,
        onDisplayChange: (isOpen) {
          // _showSnackBar(context, "The menu is ${isOpen ? "open" : "closed"}");
        },
        children: <Widget>[
          RawMaterialButton(
            onPressed: () {
              // _showSnackBar(context, "You pressed 1");
            },
            shape: CircleBorder(),
            padding: const EdgeInsets.all(24.0),
            child: SvgPicture.asset("assets/svgs/ll.svg"),
          ),
          RawMaterialButton(
            onPressed: () {
              // _showSnackBar(context, "You pressed 2");
            },
            shape: CircleBorder(),
            padding: const EdgeInsets.all(24.0),
            child: SvgPicture.asset("assets/svgs/filter-01.svg"),
          ),
          RawMaterialButton(
            onPressed: () {
              // _showSnackBar(context, "You pressed 3");
            },
            shape: CircleBorder(),
            padding: const EdgeInsets.all(24.0),
            child: SvgPicture.asset("assets/svgs/location.svg"),
          ),
          RawMaterialButton(
            onPressed: () {
              // _showSnackBar(
              // context, "You pressed 4. This one closes the menu on tap");
              fabKey.currentState!.close();
            },
            shape: CircleBorder(),
            padding: const EdgeInsets.all(24.0),
            child: SvgPicture.asset("assets/svgs/heart.svg"),
          )
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/Signin.png"),
          fit: BoxFit.cover,
        )),
        child: Center(
            child: InkWell(
//                onTap: () => yYDialogDemo(context), child: Text("show box")
              onTap: () => showDialog(context: context, builder: (context) => AlertDialog(
                title: Text('Title'),
                content: Text('Confirm'),
                actions: [
                  TextButton(onPressed: () {}, child: Text('No')),
                  TextButton(onPressed: () {}, child: Text('Yes'))
                ],
              )),
            )),
      ),
    );
  }

  // void _showSnackBar(BuildContext context, String message) {
  // ScaffoldMessenger.showSnackBar
  //   Scaffold.of(context).showSnackBar(SnackBar(
  //     content: Text(message),
  //     duration: const Duration(milliseconds: 1000),
  //   ));
  // }
}
