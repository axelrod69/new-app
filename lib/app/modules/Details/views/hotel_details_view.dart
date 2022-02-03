import 'package:boozimba/app/modules/Details/controllers/hotel_details_controller.dart';
import 'package:boozimba/app/utils/CustomColors.dart';
import 'package:boozimba/app/widgets/customGridItem.dart';
import 'package:boozimba/app/widgets/customTextNoProperty.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

//17.png
class HotelDetailsView extends GetView<HotelDetailsController> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          decoration: BoxDecoration(
            //color: Colors.black,
            image: DecorationImage(
              image: AssetImage("assets/images/Membership.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Stack(
                children: [
                  Container(
                      width: w * 0.28,
                      height: h * 0.15,
                      child: Center(
                          child: Image.asset("assets/images/logo-with-bg.png")),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(w * 0.25),
                        ),
                      )),
                  Center(
                    child: Container(
                      // alignment: Alignment.center,
                      margin: EdgeInsets.only(
                        top: 70,
                      ),
                      //width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/icons/fast-food.png",
                                    height: 32,
                                    color: PrimaryAccentColor,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(bottom: 16.0),
                                    child: CustomTextNoProperty(
                                      "Pellentesque",
                                      fontSize: 32,
                                    ),
                                  )
                                ],
                              ),
                              Positioned(
                                right: 20,
                                bottom: 0.00,
                                child: Text(
                                  "Maidan, Kolkata",
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    fontFamily: "Segoe",
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: PrimaryAccentColor,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 28, top: 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: w * 0.20,
                                ),
                                RatingBar(
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
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 2.0),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Container(
                    height: h * 0.001,
                    width: w * 0.75,
                    decoration: BoxDecoration(
                      color: PrimaryAccentColor,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Debo hacer para que yo construir tres hora todos los. Ambos van a una escuela.entonces necesitan gente  que yo construir tres hora todos los. Ambos van a una escuela.entonces necesitan",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: "Segoe",
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: PrimaryAccentColor,
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          "assets/icons/cocktail.png",
                          color: PrimaryAccentColor,
                          height: 48,
                        ),
                        Image.asset(
                          "assets/icons/fast-food.png",
                          color: PrimaryAccentColor,
                          height: 48,
                        ),
                        Image.asset(
                          "assets/icons/cocktail.png",
                          color: PrimaryAccentColor,
                          height: 48,
                        ),
                        Icon(
                          Icons.wifi,
                          color: PrimaryAccentColor,
                          size: 32,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
