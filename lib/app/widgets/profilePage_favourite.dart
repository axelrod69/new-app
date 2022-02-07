import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import './customRatingBar.dart';
import '../utils/orangePainter.dart';

class ProfilePageFavourite extends StatefulWidget {
  ProfilePageFavouriteState createState() => ProfilePageFavouriteState();
}

class ProfilePageFavouriteState extends State<ProfilePageFavourite> {
  // final List<dynamic> _favouritesList = [

  // ];
  var favourite = false;

  void _onPressed() {
    setState(() => favourite = !favourite);
    print(favourite);
  }

  bool _pressed = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final textScale = MediaQuery.of(context).textScaleFactor * 1.2;

    // TODO: implement build
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => Stack(
        children: [
          // Container(
          //   width: width * 0.75,
          //   margin: EdgeInsets.only(right: width * 0.09),
          //   decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(20),
          //       color: Colors.yellow,
          //       image: DecorationImage(
          //           fit: BoxFit.fitWidth,
          //           image: AssetImage('assets/images/pub screen 1 (1).png'))),
          // ),
          Container(
            margin: EdgeInsets.only(right: width * 0.08),
            child: InkWell(
              onTap: () => setState(() => _pressed = !_pressed),
              child: Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    side: _pressed
                        ? BorderSide(color: Colors.white, width: 2)
                        : BorderSide(color: Colors.green, width: 2)),
                elevation: 10,
                shadowColor: _pressed ? Colors.orange : Colors.white,
                child: Image.asset(
                  'assets/images/pub screen 1 (1).png',
                  width: width * 0.75,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: height * 0.17,
            child: Container(
              height: height * 0.07,
              width: width * 0.75,
              padding: EdgeInsets.only(top: height * 0.008),
              decoration: BoxDecoration(
                  // color: Colors.black38,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Column(
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: width * 0.05),
                        // decoration: BoxDecoration(boxShadow: [
                        //   BoxShadow(
                        //       color: Colors.red,
                        //       blurRadius: 2,
                        //       spreadRadius: 5,
                        //       offset: Offset(0, 2))
                        // ]),
                        child: Image.asset(
                          'assets/icons/dine.png',
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: width * 0.02,
                      ),
                      Text(
                        'Sollicitudin',
                        textScaleFactor: textScale,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            shadows: [
                              Shadow(
                                  color: Colors.red,
                                  blurRadius: 10,
                                  offset: Offset(0, 4))
                            ]),
                      )
                    ],
                  ),
                  Container(
                      width: double.infinity,
                      // color: Colors.red,
                      padding: EdgeInsets.only(left: width * 0.118),
                      child: CustomRatingBar(4.5))
                ],
              ),
            ),
          ),
          Positioned(
            left: width * 0.58,
            top: height * 0.01,
            child: Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.pink,
                  blurRadius: 80,
                  spreadRadius: 6,
                )
              ]),
              child: !favourite
                  ? IconButton(
                      onPressed: _onPressed,
                      icon: Icon(
                        Icons.favorite,
                        // color: Color.fromRGBO(247, 180, 230, 0.8),
                        color: Colors.pink,
                        size: 50,
                      ))
                  : IconButton(
                      onPressed: _onPressed,
                      icon: Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.pink,
                        size: 50,
                      )),
            ),
          ),
        ],
      ),
      itemCount: 5,
    );
  }
}
