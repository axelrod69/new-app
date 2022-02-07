import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import './customRatingBar.dart';

// class ProfileLastPub extends StatefulWidget {
//   ProfileLastPubState createState() => ProfileLastPubState();
// }

class ProfileLastPub extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final width = MediaQuery.of(context).size.width;
    final textScale = MediaQuery.of(context).textScaleFactor * 1.2;

    // TODO: implement build
    return StaggeredGridView.countBuilder(
      mainAxisSpacing: 15,
      crossAxisSpacing: 10,
      crossAxisCount: 4,
      staggeredTileBuilder: (index) =>
          StaggeredTile.count(2, index.isEven ? 3 : 2.5),
      itemBuilder: (context, index) => Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
            borderRadius: index.isEven
                ? BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30))
                : BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
            side: BorderSide(color: Colors.white, width: 3)),
        elevation: 10,
        shadowColor: Colors.orange,
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/pub screen 1 (1).png'))),
            ),
            Positioned(
              top: index.isEven ? height * 0.23 : height * 0.17,
              // bottom: index.isEven ? height * 0.08 : height * 0.1,
              left: width * 0.02,
              child: Container(
                height: height * 0.05,
                width: width * 0.08,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.red,
                      spreadRadius: 10,
                      blurRadius: 50,
                      offset: Offset(0, 2))
                ]),
                child: Image.asset(
                  'assets/icons/dine.png',
                  fit: BoxFit.cover,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
                top: index.isEven ? height * 0.23 : height * 0.17,
                // bottom: index.isEven ? height * 0.035 : height * 0.057,
                child: Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.1, right: width * 0.01),
                  child: Container(
                    height: height * 0.1,
                    width: width * 0.5,
                    padding:
                        EdgeInsets.only(left: width * 0.01, top: height * 0.01),
                    // color: Colors.red,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Sollicitudin',
                            textScaleFactor: textScale,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                shadows: [
                                  Shadow(
                                      color: Colors.red,
                                      blurRadius: 20,
                                      offset: Offset(0, 3))
                                ])),
                        Text(
                          'Maidan, Kolkata',
                          textScaleFactor: textScale,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                        CustomRatingBar(4.5)
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
      itemCount: 4,
    );
  }
}
