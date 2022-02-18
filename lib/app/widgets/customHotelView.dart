import 'package:boozimba/app/utils/CustomColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomHotelView extends StatelessWidget {

  String img;
  String title;
  String desc;

  CustomHotelView(this.img, this.title, this.desc);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 8.0),
      margin: EdgeInsets.only(bottom: 20, left: 16, right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      //color: Colors.black,
      shape: BoxShape.rectangle,
      border: Border.all(style: BorderStyle.solid, color: PrimaryAccentColor, width: 1.5,
      ),
      ),

      child:Row(
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
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                      fontFamily: "Segoe",
                      color: Colors.white
                    ),
                  ),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 4.0)),
                  Text(
                    desc,
                    style: const TextStyle(fontSize: 12.0,
                        fontFamily: "Segoe",
                        color: Color(0xFFDADADA)
                    ),
                  ),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.add_location_outlined,
                        size: 10,
                        color: Color(0xFFDADADA),
                      ),
                      SizedBox(width: 4,),
                      Text("Open With Google Map",
                        style: TextStyle(
                            fontFamily: "Segoe",
                            fontSize: 12,
                            color: Colors.white,
                        ),
                      ),
                    ],
                  )

                ],
              ),
            ),
            ),
        ],
      ),
    );
  }
}
