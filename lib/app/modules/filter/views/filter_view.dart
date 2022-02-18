import 'package:boozimba/app/modules/filter/controllers/filter_contoller.dart';
import 'package:boozimba/app/utils/CustomColors.dart';
import 'package:boozimba/app/utils/myCirclePainter.dart';
import 'package:boozimba/app/widgets/customBtnTryNow.dart';
import 'package:boozimba/app/widgets/customHotelView.dart';
import 'package:boozimba/app/widgets/customTextNoProperty.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class FilterView extends StatefulWidget {
  @override
  State<FilterView> createState() => _FilterViewState();
}

class _FilterViewState extends State<FilterView> {
  bool isSwitched = true;
  final key1 = GlobalKey();
  final key2 = GlobalKey();
  final key3 = GlobalKey();
  bool opened = true;
  bool _switchValue = true;
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Container(
      height: h,
      width: w,
      decoration: BoxDecoration(
        //color: Colors.black,
        image: DecorationImage(
          image: AssetImage("assets/images/filter.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Filters",
                style: GoogleFonts.badScript(
                  color: Colors.amberAccent,
                  fontSize: w * 0.08,
                ),
              ),
              SizedBox(
                width: w * 0.6,
              ),
              Text(
                "Reset",
                style: GoogleFonts.badScript(
                  color: Colors.amberAccent,
                  fontSize: w * 0.08,
                ),
              ),
            ],
          ),
          SizedBox(
            height: h * 0.025,
          ),
          Padding(
              padding: EdgeInsets.only(right: w * 0.7),
              child: Text("Location",
                  style: GoogleFonts.badScript(
                      color: PrimaryGolden,
                      fontSize: w * 0.06,
                      fontWeight: FontWeight.bold))),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Park Street",
                hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: w * 0.05,
                    fontWeight: FontWeight.bold),
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
              ),
            ),
          ),
          SizedBox(
            height: h * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Only Near Me",
                style: GoogleFonts.badScript(
                    fontWeight: FontWeight.bold,
                    color: PrimaryGolden,
                    fontSize: w * 0.06),
              ),

              SizedBox(
                width: w * 0.35,
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
              // Switch(
              //   activeColor: Colors.white,
              //   // thumbColor: PrimaryOrange,
              //   inactiveThumbColor: PrimaryOrange,
              //   value: _switchValue,
              //   onChanged: (value) {
              //     setState(() {
              //       _switchValue = value;
              //     });
              //   },
              // )
            ],
          ),
          Container(
            height: h * 0.6,
            child: DefaultTabController(
              length: 3,
              child: Scaffold(
                backgroundColor: Colors.transparent,
                appBar: new PreferredSize(
                  preferredSize: Size.fromHeight(kToolbarHeight),
                  child: new Container(
                    height: 50.0,
                    child: new TabBar(
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorWeight: 4,
                      indicatorColor: Colors.white,
                      labelStyle: GoogleFonts.roboto(
                          fontSize: w * 0.045,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      tabs: [
                        Tab(
                          text: "Nearby",
                        ),
                        Tab(
                          text: "Popular",
                        ),
                        Tab(
                          text: "Rating",
                        ),
                      ],
                    ),
                  ),
                ),
                body: TabBarView(
                  children: [
                    ListView(
                      shrinkWrap: true,
                      children: [
                        SizedBox(
                          height: h * 0.02,
                        ),
                        CustomHotelView(
                            "https://www.ahstatic.com/photos/7962_rsr001_00_p_1024x768.jpg",
                            "Sollicitudin",
                            "Lorem ipsum dolor sit ametEt sint ullam qui dolorem odit qui nobis  eum "),
                        CustomHotelView(
                            "https://www.ahstatic.com/photos/7962_rsr006_00_p_1024x768.jpg",
                            "Pellentesque",
                            "Lorem ipsum dolor sit ametEt sint ullam qui dolorem odit qui nobis  eum "),
                        CustomHotelView(
                            "https://www.ahstatic.com/photos/7962_rsr001_00_p_1024x768.jpg",
                            "Vestibulum",
                            "Lorem ipsum dolor sit ametEt sint ullam qui dolorem odit qui nobis  eum  "),
                      ],
                    ),
                    ListView(
                      shrinkWrap: true,
                      children: [
                        SizedBox(
                          height: h * 0.02,
                        ),
                        CustomHotelView(
                            "https://www.ahstatic.com/photos/7962_rsr001_00_p_1024x768.jpg",
                            "Sollicitudin",
                            "Lorem ipsum dolor sit ametEt sint ullam qui dolorem odit qui nobis  eum "),
                        CustomHotelView(
                            "https://www.ahstatic.com/photos/7962_rsr006_00_p_1024x768.jpg",
                            "Pellentesque",
                            "Lorem ipsum dolor sit ametEt sint ullam qui dolorem odit qui nobis  eum "),
                        CustomHotelView(
                            "https://www.ahstatic.com/photos/7962_rsr001_00_p_1024x768.jpg",
                            "Vestibulum",
                            "Lorem ipsum dolor sit ametEt sint ullam qui dolorem odit qui nobis  eum  "),
                      ],
                    ),
                    ListView(
                      shrinkWrap: true,
                      children: [
                        SizedBox(
                          height: h * 0.02,
                        ),
                        CustomHotelView(
                            "https://www.ahstatic.com/photos/7962_rsr001_00_p_1024x768.jpg",
                            "Sollicitudin",
                            "Lorem ipsum dolor sit ametEt sint ullam qui dolorem odit qui nobis  eum "),
                        CustomHotelView(
                            "https://www.ahstatic.com/photos/7962_rsr006_00_p_1024x768.jpg",
                            "Pellentesque",
                            "Lorem ipsum dolor sit ametEt sint ullam qui dolorem odit qui nobis  eum "),
                        CustomHotelView(
                            "https://www.ahstatic.com/photos/7962_rsr001_00_p_1024x768.jpg",
                            "Vestibulum",
                            "Lorem ipsum dolor sit ametEt sint ullam qui dolorem odit qui nobis  eum  "),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
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








// Scaffold(
        //   appBar: new AppBar(
        //     flexibleSpace: new Column(
        //       mainAxisAlignment: MainAxisAlignment.end,
        //       children: [
        //         new TabBar(
        //           tabs: [
        //             new Tab(icon: new Icon(Icons.directions_car)),
        //             new Tab(icon: new Icon(Icons.directions_transit)),
        //             new Tab(icon: new Icon(Icons.directions_bike)),
        //           ],
        //         ),
        //       ],
        //     ),
        //   ),
        //   body: SafeArea(
        //     child: SingleChildScrollView(
        //       child: Container(
                // height: h,
                // width: w,
                // decoration: BoxDecoration(
                //   //color: Colors.black,
                //   image: DecorationImage(
                //     image: AssetImage("assets/images/filter.png"),
                //     fit: BoxFit.fill,
                //   ),
                // ),
        //         child: Column(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             // Stack(children: [
        //             //   AnimatedPositioned(
        //             //       duration: Duration(milliseconds: 300),
        //             //       // right: opened
        //             //       //     ? MediaQuery.of(context).size.width / 2 - 40.0
        //             //       //     : (MediaQuery.of(context).size.width / 2) - 120.0,
        //             //       left: opened ? 0.0 : w * 0.29,
        //             //       top: opened
        //             //           ? 0.0
        //             //           : MediaQuery.of(context).size.height * 0.0,
        //             //       child: _buildOption(
        //             //           SvgPicture.asset("assets/svgs/home.svg"),
        //             //           Colors.purple)),
        //             //   AnimatedPositioned(
        //             //       duration: Duration(milliseconds: 300),
        //             //       left: opened ? 0.0 : w * 0.24,
        //             //       top: opened
        //             //           ? 0.0
        //             //           : MediaQuery.of(context).size.height * 0.06,
        //             //       child: _buildOption(
        //             //           SvgPicture.asset("assets/svgs/search.svg"),
        //             //           Colors.green)),
        //             //   AnimatedPositioned(
        //             //       duration: Duration(milliseconds: 300),
        //             //       left: opened ? 0.0 : w * 0.155,
        //             //       top: opened
        //             //           ? 0.0
        //             //           : MediaQuery.of(context).size.height * 0.11,
        //             //       child: _buildOption(
        //             //           SvgPicture.asset("assets/svgs/notification.svg"),
        //             //           Colors.green)),
        //             //   AnimatedPositioned(
        //             //       duration: Duration(milliseconds: 300),
        //             //       left: opened ? 0.0 : w * 0.04,
        //             //       top: opened
        //             //           ? 0.0
        //             //           : MediaQuery.of(context).size.height * 0.147,
        //             //       child: _buildOption(
        //             //           SvgPicture.asset("assets/svgs/user.svg"),
        //             //           Colors.brown)),
        //             //   Positioned(
        //             //     left: 0,
        //             //     top: 0,
        //             //     child: AnimatedSwitcher(
        //             //       duration: Duration(milliseconds: 200),
        //             //       transitionBuilder:
        //             //           (Widget child, Animation<double> animation) {
        //             //         return ScaleTransition(child: child, scale: animation);
        //             //       },
        //             //       child: opened
        //             //           ? InkWell(
        //             //               key: UniqueKey(),
        //             //               child: Stack(
        //             //                 children: [
        //             //                   SvgPicture.asset(
        //             //                     "assets/svgs/logo-with-bg.svg",
        //             //                     // color: Colors.b,
        //             //                   ),
        //             //                   Padding(
        //             //                       padding: EdgeInsets.all(w * 0.04),
        //             //                       child:
        //             //                           Image.asset("assets/icons/logo.png"))
        //             //                 ],
        //             //               ),
        //             //               onTap: () {
        //             //                 setState(() {
        //             //                   opened = false;
        //             //                 });
        //             //               })
        //             //           : InkWell(
        //             //               key: UniqueKey(),
        //             //               child: Stack(
        //             //                 children: [
        //             //                   SvgPicture.asset(
        //             //                     "assets/svgs/logo-with-bg.svg",
        //             //                     // color: Colors.b,
        //             //                   ),
        //             //                   Padding(
        //             //                       padding: EdgeInsets.all(w * 0.04),
        //             //                       child:
        //             //                           Image.asset("assets/icons/logo.png"))
        //             //                 ],
        //             //               ),
        //             //               onTap: () {
        //             //                 setState(() {
        //             //                   opened = true;
        //             //                 });
        //             //               }),
        //             //     ),
        //             //   ),
        //             //   //   Row(
        //             //   //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //             //   //   children: [
        //             //   //     Container(
        //             //   //         width: w * 0.28,
        //             //   //         height: h * 0.15,
        //             //   //         child: Center(child: Image.asset("assets/images/logo-with-bg.png")),
        //             //   //         decoration: BoxDecoration(
        //             //   //           borderRadius: BorderRadius.only(
        //             //   //             bottomRight: Radius.circular(w * 0.25),
        //             //   //           ),
        //             //   //         )
        //             //   //     ),
        //             //   //     SizedBox(),
        //             //   //   ],
        //             //   // ),
        //             // ]),
        //             Container(
        //               // margin: EdgeInsets.only(top: 70),
        //               child: Row(
        //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                 children: [
        //                   Padding(
        //                     padding: const EdgeInsets.only(left: 16.0),
        //                     child: Text(
        //                       "Filters",
        //                       style: TextStyle(
        //                           color: Colors.amberAccent, fontSize: 20),
        //                     ),
        //                   ),
        //                   Padding(
        //                     padding: const EdgeInsets.only(right: 16.0),
        //                     child: Text(
        //                       "Reset",
        //                       style: TextStyle(
        //                           color: Colors.amberAccent, fontSize: 20),
        //                     ),
        //                   ),
        //                 ],
        //               ),
        //             ),
        //             Container(
        //               margin: EdgeInsets.only(left: w * 0.1, right: w * 0.1),
        //               child: TextFormField(
        //                 decoration: InputDecoration(
        //                     labelText: 'Enter something',
        //                     enabledBorder: OutlineInputBorder(
        //                       borderSide:
        //                           BorderSide(width: 3, color: Colors.white),
        //                       borderRadius: BorderRadius.circular(15),
        //                     ),
        //                     focusedBorder: OutlineInputBorder(
        //                       borderSide:
        //                           BorderSide(width: 3, color: Colors.green),
        //                       borderRadius: BorderRadius.circular(15),
        //                     )),
        //               ),
        //             ),
        //             SizedBox(
        //               height: 16,
        //             ),

        //             SizedBox(
        //               height: 12,
        //             ),

        //             TabBarView(
        //               children: [
        //                 Column(
        //                   children: [
                            // CustomHotelView(
                            //     "https://www.ahstatic.com/photos/7962_rsr001_00_p_1024x768.jpg",
                            //     "Sollicitudin",
                            //     "Lorem ipsum dolor sit ametEt sint ullam qui dolorem odit qui nobis  eum "),
                            // CustomHotelView(
                            //     "https://www.ahstatic.com/photos/7962_rsr006_00_p_1024x768.jpg",
                            //     "Pellentesque",
                            //     "Lorem ipsum dolor sit ametEt sint ullam qui dolorem odit qui nobis  eum "),
                            // CustomHotelView(
                            //     "https://www.ahstatic.com/photos/7962_rsr001_00_p_1024x768.jpg",
                            //     "Vestibulum",
                            //     "Lorem ipsum dolor sit ametEt sint ullam qui dolorem odit qui nobis  eum  "),
        //                   ],
        //                 ),
        //                 Icon(Icons.directions_transit, size: 350),
        //                 Icon(Icons.directions_car, size: 350),
        //               ],
        //             ),

        //             SizedBox(
        //               height: 8,
        //             ),
        //             Padding(
        //               padding: const EdgeInsets.symmetric(vertical: 12.0),
        //               child: Center(
        //                 child: CustomButtonTryNow(
        //                   CustomTextNoProperty(
        //                     "Next",
        //                     //txt: TextAlign.left,
        //                     fontSize: 20,
        //                   ),
        //                   width: 0.40,
        //                   height: 0.07,
        //                 ),
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //     ),
        //   ),
        // ),