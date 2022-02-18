import 'package:boozimba/app/modules/booking/view/booking_view.dart';
import 'package:boozimba/app/utils/CustomColors.dart';
import 'package:circular_menu/circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'customBookNowView.dart';
import 'customHome.dart';
import 'customIntroTextDescription.dart';
import 'customIntroTextTilte.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'customOverview.dart';
//import 'package:smooth_star_rating/smooth_star_rating.dart';

class CustomHomeDetails extends StatefulWidget {
  CustomHomeDetailsState createState() => CustomHomeDetailsState();
}

class CustomHomeDetailsState extends State<CustomHomeDetails> {
  bool _clicked = false;
  bool _favClick = false;

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    final textScale = MediaQuery.of(context).textScaleFactor * 1.2;

    return Container(
      // padding: EdgeInsets.all(w * 0.05),
      padding: EdgeInsets.only(left: w * 0.02, right: w * 0.02),
      child: Column(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            // mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: h * 0.5,
              ),
              // SizedBox(
              //   height: h * 0.58,
              // ),
              // _getMenu(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () => setState(() {
                      _clicked = !_clicked;
                    }),
                    child: IntroTextTile(
                      "Fusce \nFeugiatart",
                    ),
                  ),
                  // TextButton(
                  //     onPressed: () => setState(() {
                  //           _clicked = !_clicked;
                  //           print(_clicked);
                  //         }),
                  //     child: Text(
                  //       "Fusce \nFeugiatart",
                  //       textScaleFactor: textScale,
                  //       style: TextStyle(
                  //         fontSize: w * 0.085,
                  //         fontFamily: "Segoe",
                  //         fontStyle: FontStyle.italic,
                  //         color: PrimaryGolden,
                  //       ),
                  //     )),
                  SizedBox(
                    width: w * 0.08,
                  ),
                  _favClick
                      ?
                      // IconButton(
                      // Icons.favorite_border,
                      // color: PrimaryAccentColor,
                      // size: h * 0.05,
                      //   )
                      IconButton(
                          onPressed: () => setState(() {
                                _favClick = false;
                              }),
                          icon: Icon(
                            Icons.favorite_border,
                            color: PrimaryAccentColor,
                            size: h * 0.05,
                          ))
                      : IconButton(
                          onPressed: () => setState(() {
                                _favClick = true;
                              }),
                          icon: Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: h * 0.05,
                          )),
                  SizedBox(
                    width: w * 0.02,
                  ),
                  Icon(
                    Icons.share,
                    color: PrimaryAccentColor,
                    size: h * 0.05,
                  ),
                ],
              ),
              Container(
                height: h * 0.004,
                width: w * 0.48,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [PrimaryColor, PrimaryGolden])),
              ),
              SizedBox(
                height: 20,
              ),
              _clicked
                  ? IntroTextDescription(
                      "Cras quis maximus neque. Maecenas assunsam eget urna at elementum",
                      fontsize: 14,
                    )
                  : SizedBox(height: h * 0.05),

              SizedBox(
                height: h * 0.025,
              ),
              _clicked
                  ? Container(
                      width: double.infinity,
                      // color: Colors.red,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: w * 0.02),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/icons/fast-food.png",
                                  color: Colors.white,
                                  fit: BoxFit.cover,
                                  height: h * 0.05,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: RatingBar(
                                    initialRating: 3.5,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 16,
                                    glowColor: Colors.white,
                                    glow: true,
                                    ratingWidget: RatingWidget(
                                        full: Icon(
                                          Icons.star,
                                          color: Colors.white,
                                        ),
                                        half: Icon(
                                          Icons.star_half,
                                          color: Colors.white,
                                        ),
                                        empty: Icon(
                                          Icons.star_border,
                                          color: PrimaryColor,
                                        )),
                                    itemPadding:
                                        EdgeInsets.symmetric(horizontal: 2.0),
                                    onRatingUpdate: (rating) {
                                      //print(rating);
                                    },
                                  ),
                                ),
                              ],
                            ),

                            Row(
                              children: [
                                Image.asset(
                                  "assets/icons/cocktail.png",
                                  color: Colors.white,
                                  fit: BoxFit.cover,
                                  height: h * 0.05,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 0),
                                  child: RatingBar(
                                    initialRating: 3.5,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 16,
                                    glowColor: Colors.white,
                                    glow: true,
                                    ratingWidget: RatingWidget(
                                        full: Icon(
                                          Icons.star,
                                          color: Colors.white,
                                        ),
                                        half: Icon(
                                          Icons.star_half,
                                          color: Colors.white,
                                        ),
                                        empty: Icon(
                                          Icons.star_border,
                                          color: PrimaryColor,
                                        )),
                                    itemPadding:
                                        EdgeInsets.symmetric(horizontal: 2.0),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                ),
                              ],
                            ),
                            // _getFloatingActionButton(),
                          ],
                        ),
                      ),
                    )
                  : SizedBox(height: h * 0.05)
            ],
          ),
          _clicked
              ? Column(
                  children: [
                    Text(
                      "Details",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: PrimaryAccentColor,
                        fontSize: 16,
                        fontFamily: "Segoe",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Icon(
                      Icons.expand_more,
                      color: PrimaryAccentColor,
                    )
                  ],
                )
              : SizedBox(height: 0.05),
        ],
      ),
    );
  }
}
