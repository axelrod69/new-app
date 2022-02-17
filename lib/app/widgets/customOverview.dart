import 'package:boozimba/app/utils/CustomColors.dart';
import 'package:boozimba/app/utils/myCirclePainter.dart';
import 'package:boozimba/app/utils/participantPainter.dart';
import 'package:boozimba/app/widgets/customBtnTryNow.dart';
import 'package:boozimba/app/widgets/participantsList.dart';
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

  final TextEditingController _controller = new TextEditingController();
  List<String> items = [
    '1.20',
    '2.20',
    '3.20',
    '4.20',
    '5.20',
    '6.20',
    '7.20',
    '8.20',
    '1.20',
    '2.20',
    '3.20',
    '4.20',
    '5.20',
    '6.20',
    '7.20',
    '8.20'
  ];

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
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: w * 0.07),
                    height: h * 0.005,
                    width: w * 0.12,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.red,
                              blurRadius: 2.0,
                              spreadRadius: 3.0)
                        ]),
                  ),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  Container(
                      width: w * 0.4,
                      height: h * 0.08,
                      margin: EdgeInsets.only(right: 32),
                      decoration: BoxDecoration(
                        // color: Colors.green,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          style: BorderStyle.solid,
                          color: Colors.green,
                          width: 3,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 5.0),
                        child: TextField(
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                    color: Colors.blueAccent,
                                    blurRadius: 20,
                                    offset: Offset(0, 2))
                              ],
                              letterSpacing: 2,
                              color: Colors.white,
                              fontFamily: "Segoe"),
                          controller: _controller,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            suffixIcon: Container(
                              child:
// dropdown + text(vikas edit)
                                  /* PopupMenuButton<String>(
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
                                    ),*/
                                  DropdownButtonHideUnderline(
                                child: DropdownButton(
                                  //itemHeight:20,
                                  menuMaxHeight: 150,
                                  icon: const Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.white,
                                  ),
                                  items: items
                                      .map((e) => DropdownMenuItem(
                                            child: Container(
                                              // color: Colors.transparent,
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                e,
                                                style: TextStyle(fontSize: 20),
                                              ),
                                            ),
                                            value: e,
                                          ))
                                      .toList(),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      _controller.text = newValue!;
                                    });
                                  },
                                  //value: _currency,
                                  /*onSelected: (String value) {
                                          _controller.text = value;
                                        },*/
                                ),
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
                  // Container(
                  //   margin: EdgeInsets.only(right: 32),
                  //   decoration: BoxDecoration(
                  //     shape: BoxShape.rectangle,
                  //     borderRadius: BorderRadius.circular(12),
                  //     border: Border.all(
                  //       style: BorderStyle.solid,
                  //       color: PrimarySilver,
                  //       width: 3,
                  //     ),
                  //   ),
                  //   child: Padding(
                  //     padding: const EdgeInsets.symmetric(
                  //         horizontal: 12.0, vertical: 4),
                  //     child: BorderedText(
                  //       strokeWidth: 2.0,
                  //       strokeColor: Colors.blue,
                  //       child: Text(
                  //         widget.time,
                  //         style: TextStyle(
                  //             fontSize: 28,
                  //             letterSpacing: 2,
                  //             color: Colors.white,
                  //             fontFamily: "Segoe"
                  //             /* foreground: Paint()
                  //             ..style = PaintingStyle.stroke
                  //             ..strokeWidth = 2
                  //             ..color = PrimarySilver,*/
                  //             ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
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
}
