import 'package:boozimba/app/utils/CustomColors.dart';
import 'package:boozimba/app/utils/myCirclePainter.dart';
import 'package:boozimba/app/widgets/customBtnTryNow.dart';
import 'package:boozimba/app/widgets/participantsList.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'customButton.dart';
import 'customTextNoProperty.dart';

class CustomOverview extends StatelessWidget {
  String img;
  String title;
  String desc;
  double ratings;
  String address;
  String time;
  List<String> participants = [
    "Arinab Dey",
    "Payel Roy",
    "Sourav Pal",
    "Rahul Saha"
  ];
  CustomOverview(
    this.img,
    this.title,
    this.desc, {
    this.ratings = 2.5,
    this.address = "",
    this.time = "2:30",
  });
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    final textScale = MediaQuery.of(context).textScaleFactor * 1.2;

    return Column(
      children: [
        Container(
          //height: h*0.006 ,
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 8.0),
          margin: EdgeInsets.only(bottom: 20, left: 16, right: 16, top: 24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            //color: Colors.black,
            shape: BoxShape.rectangle,
            border: Border.all(
              style: BorderStyle.solid,
              color: PrimaryAccentColor,
              width: 1.5,
            ),
          ),

          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Image.network(
                  img,
                  height: 100,
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        title,
                        textScaleFactor: textScale,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            fontFamily: "Segoe",
                            color: Colors.white),
                      ),
                      const Padding(
                          padding: EdgeInsets.symmetric(vertical: 4.0)),
                      Text(
                        desc,
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
                          initialRating: ratings,
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
                      Text(
                        address,
                        textScaleFactor: textScale,
                        style: const TextStyle(
                            fontSize: 12.0,
                            fontFamily: "Segoe",
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFDADADA)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: h * 0.02),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                  onTap: () => Get.toNamed('/custom-calendar'),
                  child: SvgPicture.asset('assets/svgs/booking-calender.svg')),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: w * 0.07),
                    height: h * 0.002,
                    width: w * 0.12,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        boxShadow: [
                          BoxShadow(
                              color: PrimaryColor,
                              blurRadius: 2.0,
                              spreadRadius: 3.0)
                        ]),
                  ),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 32),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        style: BorderStyle.solid,
                        color: PrimarySilver,
                        width: 3,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 4),
                      child: BorderedText(
                        strokeWidth: 2.0,
                        strokeColor: Colors.blue,
                        child: Text(
                          time,
                          style: TextStyle(
                              fontSize: 28,
                              letterSpacing: 2,
                              color: Colors.white,
                              fontFamily: "Segoe"
                              /* foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 2
                              ..color = PrimarySilver,*/
                              ),
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
          height: 12,
        ),
        Container(
          height: h * 0.25,
          padding: EdgeInsets.all(24),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 8 / 2,
                mainAxisSpacing: 10.0,
              ),
              itemCount: participants.length,
              itemBuilder: (ctx, i) => Participants(
                  participants[i], i.isEven ? Colors.orange : Colors.green)),
        ),
        CustomPaint(
          painter: MyPinkPainter(),
          child: CustomButtonTryNow(
            CustomTextNoProperty(
              "Confirm",
              fontSize: 16,
              //color: PrimarySilver,
            ),
            // ),
            width: 0.35,
            height: 0.05,
          ),
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
}
