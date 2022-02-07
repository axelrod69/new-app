import 'package:boozimba/app/modules/booking/controllers/booking_details_controller.dart';
import 'package:boozimba/app/utils/CustomColors.dart';
import 'package:boozimba/app/utils/myCustomPainter.dart';
import 'package:boozimba/app/widgets/customAddMember.dart';
import 'package:boozimba/app/widgets/customBtnTryNow.dart';
import 'package:boozimba/app/widgets/customTextNoProperty.dart';
import 'package:boozimba/app/widgets/customYellowText.dart';
import 'package:bordered_text/bordered_text.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:intl/intl.dart';
import 'package:outlined_text/outlined_text.dart';

class BookingDetailsView extends StatefulWidget {
  BookingDetailsViewState createState() => BookingDetailsViewState();
}

// class BookingDetailsView extends GetView<BookingDetailsController>

//Bookingflow 4-2
class BookingDetailsViewState extends State<BookingDetailsView> {
  final TextEditingController _controller = new TextEditingController();
  var items = ['1.20', '2.20', '3.20', '4.20','5.20','6.20','7.20','8.20',
    '1.20', '2.20', '3.20', '4.20','5.20','6.20','7.20','8.20' ];


  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    var textScale = MediaQuery.of(context).textScaleFactor * 1.5;
    var timeNow = DateTime.now();
    var day = DateFormat('EEEE').format(timeNow).substring(0, 2);

    return Scaffold(
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
            child: Column(mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Container(
                  //     // alignment: Alignment.topLeft,
                  //     // padding: EdgeInsets.only(left: 0.),
                  //     margin: EdgeInsets.only(left: 10),
                  //     width: w * 0.28,
                  //     height: h * 0.15,
                  //     child: Center(
                  //         child: Image.asset("assets/images/logo-with-bg.png")),
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.only(
                  //         bottomRight: Radius.circular(w * 0.25),
                  //       ),
                  //     )),
                  Padding(
                    padding: EdgeInsets.only(right: w * 0.65, top: h * 0.05),
                    child: MyYellowText(
                      "Date",
                      fontSize: 24 + textScale,
                    ),
                  ),
                  // Container(
                  //     // padding: EdgeInsets.only(right: 10),
                  //     // alignment: Alignment.center,
                  //     height: h * 0.9,
                  //     width: w * 0.7,
                  //     decoration: BoxDecoration(
                  //         image: DecorationImage(
                  //             image: AssetImage(
                  //                 "assets/images/calender_outline.png"),
                  //             fit: BoxFit.fill)),
                  //     child: Stack(
                  //       children: [
                  //         SfCalendar(
                  //           backgroundColor: Colors.transparent,
                  //           view: CalendarView.month,
                  //           monthViewSettings:
                  //               MonthViewSettings(showAgenda: true),
                  //         ),
                  //       ],
                  //     )),
                  Container(
                    height: h * 0.8,
                    width: w * 0.9,
                    // padding: EdgeInsets.all(100),
                    // padding: EdgeInsets.fromLTRB(30, 120, 30, 150),
                    padding: EdgeInsets.only(
                        left: w * 0.08,
                        top: h * 0.15,
                        right: w * 0.08,
                        bottom: h * 0.15),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/calender_outline.png"),
                            fit: BoxFit.fill)),
                    child: Stack(children: [
                      SfDateRangePicker(
                          yearCellStyle: DateRangePickerYearCellStyle(
                            todayTextStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                            textStyle: TextStyle(
                                foreground: Paint()
                                  ..color = Colors.white
                                  ..style = PaintingStyle.fill
                                  ..strokeWidth = 5
                                  ..maskFilter =
                                      MaskFilter.blur(BlurStyle.inner, 5),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                shadows: [
                                  Shadow(
                                      color: PrimaryBlue,
                                      blurRadius: 6,
                                      offset: Offset(0, 1))
                                ]),
                          ),
                          minDate: DateTime(int.parse(
                              DateFormat('y').format(DateTime.now()))),
                          showNavigationArrow: true,
                          headerHeight: 70,
                          headerStyle: DateRangePickerHeaderStyle(
                              textAlign: TextAlign.center,
                              textStyle: TextStyle(
                                  color: Colors.greenAccent,
                                  fontSize: 25,
                                  shadows: [
                                    Shadow(
                                      color: PrimarySilver,
                                      blurRadius: 5,
                                      offset: Offset(0, 0),
                                    )
                                  ],
                                  fontWeight: FontWeight.bold)),
                          backgroundColor: Colors.transparent,
                          selectionMode: DateRangePickerSelectionMode.single,
                          view: DateRangePickerView.month,
                          selectionColor: PrimaryBlue,
                          selectionRadius: 80,
                          selectionShape:
                              DateRangePickerSelectionShape.rectangle,
                          monthViewSettings: DateRangePickerMonthViewSettings(
                            weekendDays: [DateTime.sunday],
                            // dayFormat: '',
                            viewHeaderStyle: DateRangePickerViewHeaderStyle(
                                textStyle: TextStyle(
                                    foreground: Paint()
                                      ..color = Colors.white
                                      ..style = PaintingStyle.fill
                                      ..strokeWidth = 5
                                      ..maskFilter =
                                          MaskFilter.blur(BlurStyle.inner, 5),
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    shadows: [
                                  Shadow(
                                      color: PrimaryBlue,
                                      blurRadius: 6,
                                      offset: Offset(0, 1))
                                ])),
                            firstDayOfWeek: 1,
                          ),
                          monthCellStyle: DateRangePickerMonthCellStyle(
                            todayTextStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                            textStyle: TextStyle(
                                fontSize: 25,
                                // color: Colors.white,
                                fontWeight: FontWeight.bold,
                                foreground: Paint()
                                  ..color = Colors.white
                                  ..style = PaintingStyle.fill
                                  ..strokeWidth = 5
                                  ..maskFilter =
                                      MaskFilter.blur(BlurStyle.inner, 5),
                                shadows: [
                                  Shadow(
                                      color: PrimaryBlue,
                                      blurRadius: 6,
                                      offset: Offset(0, 1))
                                ]),
                            weekendTextStyle: TextStyle(
                                foreground: Paint()
                                  ..color = Colors.white
                                  ..strokeWidth = 5
                                  ..style = PaintingStyle.fill
                                  ..maskFilter =
                                      MaskFilter.blur(BlurStyle.inner, 5),
                                shadows: [
                                  Shadow(
                                      color: PrimaryColor,
                                      blurRadius: 6,
                                      offset: Offset(0, 1))
                                ],
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          )),
                      Positioned(
                        top: 55,
                        right: 0,
                        left: 0,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: Container(
                            width: double.infinity,
                            height: 2,
                            decoration: BoxDecoration(
                                color: Colors.greenAccent,
                                boxShadow: [
                                  BoxShadow(
                                      color: PrimarySilver,
                                      blurRadius: 50,
                                      spreadRadius: 3,
                                      offset: Offset(0, 1))
                                ]),
                          ),
                        ),
                      )
                    ]),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: w * 0.5), //(bottom: 16.0),
                    child: MyYellowText(
                      "Available Time",
                      fontSize: 24,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: w * 0.65),
                    child: CustomPaint(
                      painter: MyCustomPainter(PrimaryColor),
                      child: CustomButtonTryNow(CustomTextNoProperty(
                        "Time",
                        txt: TextAlign.left,
                        fontSize: 16,
                      )),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomPaint(
                          painter: MyCustomPainter(PrimaryColor),
                          child: CustomButtonTryNow(
                            CustomTextNoProperty(
                              "02:00 p.m",
                              fontSize: 16,
                            ),
                          ),
                        ),
                        CustomPaint(
                          painter: MyCustomPainter(PrimaryColor),
                          child: CustomButtonTryNow(
                            CustomTextNoProperty(
                              "04:00 p.m",
                              fontSize: 16,
                            ),
                          ),
                        ),
                        CustomPaint(
                          painter: MyCustomPainter(PrimaryColor),
                          child: CustomButtonTryNow(
                            CustomTextNoProperty(
                              "05:00 p.m",
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomPaint(
                          painter: MyCustomPainter(PrimaryColor),
                          child: CustomButtonTryNow(
                            CustomTextNoProperty(
                              "Happy Hours",
                              fontSize: 16,
                              weight: FontWeight.w700,
                            ),
                            width: 0.40,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        CustomPaint(
                          painter: MyCustomPainter(PrimaryColor),
                          child: CustomButtonTryNow(
                            CustomTextNoProperty(
                              "Couple Exclusive",
                              fontSize: 16,
                              weight: FontWeight.w700,
                            ),
                            width: 0.40,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            top: 16.0, bottom: 16.0, left: 16.0),
                        child: CustomPaint(
                          painter: MyCustomPainter(PrimaryColor),
                          child: CustomButtonTryNow(
                            CustomTextNoProperty(
                              "Set Your time",
                              fontSize: 16,
                            ),
                            width: 0.30,
                          ),
                        ),
                      ),
                      Center(
                        child: Container(

                            width: w * 0.3,
                            margin: EdgeInsets.only(right: 32),
                            decoration: BoxDecoration(
                              // color: Colors.green,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                style: BorderStyle.solid,
                                color: PrimarySilver,
                                width: 3,
                              ),
                            ),
                            child:



                            Padding(
                              padding: EdgeInsets.only(left: 5.0),
                              child: TextField(
                                style: TextStyle(
                                    fontSize: 15,
                                    letterSpacing: 2,
                                    color: Colors.white,
                                    fontFamily: "Segoe"),
                                controller: _controller,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  suffixIcon: Container(

                                    child:
//vhh
                                    PopupMenuButton<String>(
                                      color: Colors.transparent,
                                      icon: const Icon(Icons.arrow_drop_down,color: Colors.white,),
                                      onSelected: (String value) {
                                        _controller.text = value;
                                      },

                                      shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                              width: 1,
                                              color: Colors.white
                                          ),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(20.0),


                                        ),
                                      ),
                                      itemBuilder: (BuildContext context) {
                                        return items
                                            .map<PopupMenuItem<String>>((String value) {
                                          return new PopupMenuItem(

                                              child: new Text(value,style:TextStyle(
                                                  fontSize: 15,
                                                  letterSpacing: 2,
                                                  color: Colors.white,
                                                  fontFamily: "Segoe") ,), value: value);
                                        }).toList();
                                      },
                                    ),


                                  ),
                                ),
                              ),
                            )
                                /*Text(
                                  "2:30",
                                  style: TextStyle(
                                      fontSize: 32,
                                      letterSpacing: 2,
                                      color: Colors.white,
                                      fontFamily: "Segoe"),
                                ),*/


                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 8.0, top: 40.0, left: 16),
                    child: MyYellowText(
                      "Available Members",
                      fontSize: 24,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(12),
                    child: CustomPaint(
                      painter: MyCustomPainter(PrimaryColor),
                      child: CustomButtonTryNow(
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.person_outline,
                              color: Colors.white,
                            ),
                            CustomTextNoProperty(
                              "Members",
                              fontSize: 16,
                            )
                          ],
                        ),
                        width: 0.35,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomPaint(
                          painter: MyCustomPainter(PrimaryColor),
                          child: CustomButtonTryNow(
                            CustomTextNoProperty(
                              "2-4",
                              fontSize: 16,
                            ),
                          ),
                        ),
                        CustomPaint(
                          painter: MyCustomPainter(PrimaryColor),
                          child: CustomButtonTryNow(
                            CustomTextNoProperty(
                              "5-9",
                              fontSize: 16,
                            ),
                          ),
                        ),
                        CustomPaint(
                          painter: MyCustomPainter(PrimaryColor),
                          child: CustomButtonTryNow(
                            CustomTextNoProperty(
                              "9-13",
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 48, left: 12, right: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyYellowText(
                          "Name of Clan",
                          fontSize: 24,
                        ),
                        CustomPaint(
                          painter: MyCustomPainter(PrimaryColor),
                          child: CustomButtonTryNow(
                            CustomTextNoProperty(
                              "Skip",
                              fontSize: 16,
                            ),
                            height: 0.05,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 16),
                    child: CustomPaint(
                      painter: MyCustomPainter(PrimaryColor),
                      child: CustomButtonTryNow(
                        TextField(
                          style: TextStyle(
                              color: PrimaryAccentColor,
                              fontFamily: "Segoe",
                              shadows: [
                                Shadow(
                                  color: PrimaryColor,
                                  blurRadius: 3.0,
                                  //spreadRadius: 2.0,
                                ),
                              ]),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(12),
                              labelStyle: TextStyle(color: PrimaryColor)),
                        ),
                        height: 0.06,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        AddMember(),
                        AddMember(),
                        AddMember(),
                        AddMember(),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 40, top: 20),
                    child: InkWell(
                      onTap: () => Get.toNamed('/slot-machine'),
                      child: Center(
                        child: CustomPaint(
                          painter: MyCustomPainter(PrimaryColor),
                          child: CustomButtonTryNow(
                            CustomTextNoProperty(
                              "Overview",
                              fontSize: 16,
                              weight: FontWeight.bold,
                            ),
                            width: 0.30,
                          ),
                        ),
                      ),
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }

  // DropdownMenuItem<String> buildMenuItem(String e) => DropdownMenuItem(
  //       value: e,
  //       child: Text(
  //         e,
  //         style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
  //       ),
  //     );
}
