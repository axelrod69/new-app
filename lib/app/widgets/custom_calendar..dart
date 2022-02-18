// class CustomCalendar {
//   // number of days in month [JAN, FEB, MAR, APR, MAY, JUN, JUL, AUG, SEP, OCT, NOV, DEC]
//   final List<int> _monthDays = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

//   // check for leap year
//   bool _isLeapYear(int year) {
//     if (year % 4 == 0) {
//       if (year % 100 == 0) {
//         if (year % 400 == 0) return true;
//         return false;
//       }
//       return true;
//     }
//     return false;
//   }

//   /// get the month calendar
//   /// month is between from 1-12 (1 for January and 12 for December)
//   List<Calendar> getMonthCalendar(int month, int year,
//       {StartWeekDay startWeekDay = StartWeekDay.sunday}) {
//     // validate
//     if (year == null || month == null || month < 1 || month > 12)
//       throw ArgumentError('Invalid year or month');

//     // List<Calendar> calendar = List<Calendar>();
//     List<Calendar> calendar = [];

//     // used for previous and next month's calendar days
//     int otherYear;
//     int otherMonth;
//     int leftDays;

//     // get no. of days in the month
//     // month-1 because _monthDays starts from index 0 and month starts from 1
//     int totalDays = _monthDays[month - 1];
//     // if this is a leap year and the month is february, increment the total days by 1
//     if (_isLeapYear(year) && month == DateTime.february) totalDays++;

//     // get this month's calendar days
//     for (int i = 0; i < totalDays; i++) {
//       calendar.add(
//         Calendar(
//           // i+1 because day starts from 1 in DateTime class
//           date: DateTime(year, month, i + 1),
//           thisMonth: true,
//         ),
//       );
//     }

//     // fill the unfilled starting weekdays of this month with the previous month days
//     if ((startWeekDay == StartWeekDay.sunday &&
//             calendar.first.date.weekday != DateTime.sunday) ||
//         (startWeekDay == StartWeekDay.monday &&
//             calendar.first.date.weekday != DateTime.monday)) {
//       // if this month is january, then previous month would be decemeber of previous year
//       if (month == DateTime.january) {
//         otherMonth = DateTime
//             .december; // _monthDays index starts from 0 (11 for december)
//         otherYear = year - 1;
//       } else {
//         otherMonth = month - 1;
//         otherYear = year;
//       }
//       // month-1 because _monthDays starts from index 0 and month starts from 1
//       totalDays = _monthDays[otherMonth - 1];
//       if (_isLeapYear(otherYear) && otherMonth == DateTime.february)
//         totalDays++;

//       leftDays = totalDays -
//           calendar.first.date.weekday +
//           ((startWeekDay == StartWeekDay.sunday) ? 0 : 1);

//       for (int i = totalDays; i > leftDays; i--) {
//         calendar.insert(
//           0,
//           Calendar(
//             date: DateTime(otherYear, otherMonth, i),
//             prevMonth: true,
//           ),
//         );
//       }
//     }

//     // fill the unfilled ending weekdays of this month with the next month days
//     if ((startWeekDay == StartWeekDay.sunday &&
//             calendar.last.date.weekday != DateTime.saturday) ||
//         (startWeekDay == StartWeekDay.monday &&
//             calendar.last.date.weekday != DateTime.sunday)) {
//       // if this month is december, then next month would be january of next year
//       if (month == DateTime.december) {
//         otherMonth = DateTime.january;
//         otherYear = year + 1;
//       } else {
//         otherMonth = month + 1;
//         otherYear = year;
//       }
//       // month-1 because _monthDays starts from index 0 and month starts from 1
//       totalDays = _monthDays[otherMonth - 1];
//       if (_isLeapYear(otherYear) && otherMonth == DateTime.february)
//         totalDays++;

//       leftDays = 7 -
//           calendar.last.date.weekday -
//           ((startWeekDay == StartWeekDay.sunday) ? 1 : 0);
//       if (leftDays == -1) leftDays = 6;

//       for (int i = 0; i < leftDays; i++) {
//         calendar.add(
//           Calendar(
//             date: DateTime(otherYear, otherMonth, i + 1),
//             nextMonth: true,
//           ),
//         );
//       }
//     }

//     return calendar;
//   }
// }

// class Calendar {
//   final DateTime date;
//   final bool thisMonth;
//   final bool prevMonth;
//   final bool nextMonth;

//   Calendar(
//       {required this.date,
//       this.thisMonth = false,
//       this.prevMonth = false,
//       this.nextMonth = false});
// }

// enum StartWeekDay { sunday, monday }

import 'package:boozimba/app/utils/CustomColors.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:intl/intl.dart';

class CustomCalender extends StatefulWidget {
  CustomCalenderState createState() => CustomCalenderState();
}

class CustomCalenderState extends State<CustomCalender> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    // final textScale = MediaQuery.of(context).textScaleFactor * 1.5;

    // TODO: implement build
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/Membership.png'))),
        child: Column(
          children: [
            Container(
              height: height * 0.8,
              width: width * 0.9,
              // padding: EdgeInsets.all(100),
              // padding: EdgeInsets.fromLTRB(30, 120, 30, 150),
              padding: EdgeInsets.only(
                  left: width * 0.08,
                  top: height * 0.15,
                  right: width * 0.08,
                  bottom: height * 0.2),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/calender_outline.png"),
                      fit: BoxFit.fill)),
              child: Stack(children: [
                SfDateRangePicker(
                    yearCellStyle: DateRangePickerYearCellStyle(
                      disabledDatesTextStyle: TextStyle(color: Colors.red),
                      leadingDatesTextStyle: TextStyle(
                          foreground: Paint()
                            ..color = Colors.white
                            ..style = PaintingStyle.fill
                            ..strokeWidth = 5
                            ..maskFilter = MaskFilter.blur(BlurStyle.inner, 5),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                                color: PrimaryBlue,
                                blurRadius: 6,
                                offset: Offset(0, 1))
                          ]),
                      todayTextStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                      textStyle: TextStyle(
                          foreground: Paint()
                            ..color = Colors.white
                            ..style = PaintingStyle.fill
                            ..strokeWidth = 5
                            ..maskFilter = MaskFilter.blur(BlurStyle.inner, 5),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                                color: PrimaryBlue,
                                blurRadius: 6,
                                offset: Offset(0, 1))
                          ]),
                    ),
                    minDate: DateTime(
                        int.parse(DateFormat('y').format(DateTime.now()))),
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
                    selectionShape: DateRangePickerSelectionShape.rectangle,
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
                            ..maskFilter = MaskFilter.blur(BlurStyle.inner, 5),
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
                            ..maskFilter = MaskFilter.blur(BlurStyle.inner, 5),
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
                      decoration:
                          BoxDecoration(color: Colors.greenAccent, boxShadow: [
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
          ],
        ),
      ),
    );
  }
}
