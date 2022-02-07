import 'package:boozimba/app/modules/booking/view/booking_details_view.dart';
import 'package:boozimba/app/modules/booking/view/booking_view.dart';
import 'package:circular_menu/circular_menu.dart';
import 'package:flutter/material.dart';

class CustomMenuArc extends StatelessWidget {
  Widget main_content;

  CustomMenuArc(this.main_content);
  @override
  Widget build(BuildContext context) {
    // dghfsd

    return CircularMenu(
      toggleButtonColor: Colors.transparent,
      toggleButtonIconColor: Colors.transparent,
      alignment: Alignment.topLeft,
      toggleButtonSize: 20,
      backgroundWidget: main_content,
      radius: 60,
      items: [
        CircularMenuItem(
            icon: Icons.home_outlined,
            iconColor: Colors.blue,
            iconSize: 36,
            margin: 10,
            color: Colors.transparent,
            //color: Colors.green,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  BookingDetailsView()),
              );

            }),
        CircularMenuItem(
            icon: Icons.search,
            iconSize: 36,
            margin: 10,
            iconColor: Colors.lightGreenAccent,
            color: Colors.transparent,
            //  color: Colors.blue,
            onTap: () {

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  BookingView()),
              );
            }),
        CircularMenuItem(
            icon: Icons.settings,
            iconSize: 36,
            margin: 10,
            color: Colors.transparent,
            // color: Colors.orange,
            onTap: () {}),
        CircularMenuItem(
            icon: Icons.chat,
            iconSize: 36,
            margin: 10,
            color: Colors.transparent,
            //  color: Colors.purple,
            onTap: () {}),
        /*CircularMenuItem(
            icon: Icons.notifications,
            //color: Colors.brown,
            onTap: () {

            })*/
      ],
    );
  }
}
