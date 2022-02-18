import 'package:boozimba/app/utils/CustomColors.dart';
import 'package:boozimba/app/utils/myCirclePainter.dart';
import 'package:boozimba/app/utils/participantPainter.dart';
import 'package:boozimba/app/widgets/customBtnTryNow.dart';
import 'package:boozimba/app/widgets/participantsList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'customButton.dart';
import 'customTextNoProperty.dart';
import './overViewClan.dart';

class CustomOverview extends StatefulWidget {
  CustomOverviewState createState() => CustomOverviewState();

  String img;
  String title;
  String desc;
  double ratings;
  String address;
  String time;

  CustomOverview(
    this.img,
    this.title,
    this.desc, {
    this.ratings = 2.5,
    this.address = "",
    this.time = "2:30",
  });
}

class CustomOverviewState extends State<CustomOverview> {
  List<String> participants = [
    "Arinab Dey",
    "Payel Roy",
    "Sourav Pal",
    "Rahul Saha"
  ];

  DateTime dateTimes = DateTime.now();

  final TextEditingController _controller = new TextEditingController();
  // List<String> items = [
  //   '1.20',
  //   '2.20',
  //   '3.20',
  //   '4.20',
  //   '5.20',
  //   '6.20',
  //   '7.20',
  //   '8.20',
  //   '1.20',
  //   '2.20',
  //   '3.20',
  //   '4.20',
  //   '5.20',
  //   '6.20',
  //   '7.20',
  //   '8.20'
  // ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dateTimes = getDateTime();
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    final textScale = MediaQuery.of(context).textScaleFactor * 1.2;

    return Column(
      children: [
        Container(
          //height: h*0.006 ,
          // height: h * 0.2,
          // padding: EdgeInsets.only(
          //     left: w * 0.05, top: h * 0.05, right: w * 0.02, bottom: h * 0.05),
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
          // margin: EdgeInsets.only(left: 16, right: 16, top: 24),
          // decoration: BoxDecoration(
          //   // color: Colors.red,
          //   borderRadius: BorderRadius.circular(12),
          //   //color: Colors.black,
          //   shape: BoxShape.rectangle,
          //   border: Border.all(
          //     style: BorderStyle.solid,
          //     color: PrimaryAccentColor,
          //     width: 1.5,
          //   ),
          // ),

          child: CustomPaint(
            painter: ParticipantPainter(Colors.green),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Padding(
                    // padding: const EdgeInsets.all(8.0),
                    padding: EdgeInsets.only(top: h * 0.02),
                    child: Container(
                      margin: EdgeInsets.only(left: w * 0.02, top: h * 0.01),
                      child: Image.network(
                        widget.img,
                        height: h * 0.12,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: h * 0.02),
                          child: Text(
                            widget.title,
                            textScaleFactor: textScale,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                                fontFamily: "Segoe",
                                color: Colors.white),
                          ),
                        ),
                        const Padding(
                            padding: EdgeInsets.symmetric(vertical: 4.0)),
                        Text(
                          widget.desc,
                          textScaleFactor: textScale,
                          style: const TextStyle(
                              fontSize: 12.0,
                              fontFamily: "Segoe",
                              color: Color(0xFFDADADA)),
                        ),
                        const Padding(
                            padding: EdgeInsets.symmetric(vertical: 2.0)),
                        Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: RatingBar(
                            initialRating: widget.ratings,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 16,
                            glowColor: Colors.white,
                            glow: true,
                            ratingWidget: RatingWidget(
                                full: Icon(
                                  Icons.star,
                                  color: PrimaryColor,
                                ),
                                half: Icon(
                                  Icons.star_half,
                                  color: PrimaryColor,
                                ),
                                empty: Icon(
                                  Icons.star_border,
                                  color: PrimaryColor,
                                )),
                            itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                            onRatingUpdate: (rating) {
                              //print(rating);
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: h * 0.02),
                          child: Text(
                            widget.address,
                            textScaleFactor: textScale,
                            style: const TextStyle(
                                fontSize: 12.0,
                                fontFamily: "Segoe",
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFDADADA)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: h * 0.001),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () => Get.toNamed('/custom-calendar'),
                  child: SvgPicture.asset(
                    'assets/svgs/booking-calender.svg',
                    width: w * 0.1,
                    height: h * 0.12,
                  )),
              SizedBox(width: w * 0.08),
              SizedBox(
                height: h * 0.01,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: w * 0.3,
                    height: h * 0.004,
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                        color: Colors.orange,
                        spreadRadius: 5,
                        blurRadius: 5,
                      )
                    ]),
                  ),
                  SizedBox(height: h * 0.02),
                  Container(
                    // key: dateKey,
                    width: w * 0.5,
                    height: h * 0.08,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      // borderRadius: BorderRadius.circular(20),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      border: Border.all(color: Colors.green, width: 3),
                    ),
                    child: SizedBox(
                      height: h * 0.2,
                      child: CupertinoTheme(
                        data: CupertinoThemeData(
                            // barBackgroundColor: Colors.transparent
                            // primaryColor: Colors.red,
                            textTheme: CupertinoTextThemeData(
                                dateTimePickerTextStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    shadows: [
                              Shadow(
                                  color: Colors.blue,
                                  blurRadius: 2,
                                  offset: Offset(0, 2))
                            ]))),
                        // ss
                        child: CupertinoDatePicker(
                          backgroundColor: Colors.transparent,
                          initialDateTime: dateTimes,
                          mode: CupertinoDatePickerMode.time,
                          use24hFormat: true,
                          minuteInterval: 10,
                          // onDateTimeChanged: (dateTime) =>
                          //     setState(() => this.dateTimes = dateTime),
                          onDateTimeChanged: (dateTime) {
                            setState(() {
                              this.dateTimes = dateTime;
                            });
                            // _overView();
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: h * 0.01,
        ),
        OverViewClan(),
        Container(
          height: h * 0.21,
          // color: Colors.red,
          padding: EdgeInsets.all(24),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 6.2 / 2,
                mainAxisSpacing: 10.0,
              ),
              itemCount: participants.length,
              itemBuilder: (ctx, i) => Participants(
                  participants[i], i.isEven ? Colors.orange : Colors.green)),
        ),
        CustomPaint(
          painter: MyPinkPainter(),
          child: CustomButtom(
              CustomTextNoProperty(
                "Confirm",
                fontSize: 16,
                //color: PrimarySilver,
              ),
              // ),
              // width: 0.35,
              // height: 0.05,
              ''),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Text(
            "Reset",
            style: TextStyle(
                fontFamily: "Segoe", color: PrimaryAccentColor, fontSize: 20),
          ),
        )
      ],
    );
  }

  DateTime getDateTime() {
    final now = DateTime.now();
    return DateTime(now.year, now.month, now.day, now.hour, 30);
  }
}
