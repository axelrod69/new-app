import 'package:circular_menu/circular_menu.dart';
import 'package:flutter/material.dart';

class CustomMenuArc extends StatelessWidget {
  Widget main_content;
  CustomMenuArc(this.main_content);
  @override
  Widget build(BuildContext context) {
    // dghfsd

    return CircularMenu(
      alignment: Alignment.topLeft,
      toggleButtonSize: 50,
      backgroundWidget: main_content,
      toggleButtonColor: Colors.transparent,
      toggleButtonIconColor: Colors.transparent,
      radius: 80,
      items: [
        CircularMenuItem(
            icon: Icons.home_outlined,
            iconColor: Colors.blue,
            iconSize: 36,
            // margin: 12,
            margin: 25,
            color: Colors.transparent,
            //color: Colors.green,
            onTap: () {}),
        CircularMenuItem(
            icon: Icons.search,
            badgeBottomOffet: 30,
            iconSize: 36,
            // margin: 12,
            margin: 20,
            iconColor: Colors.lightGreenAccent,
            color: Colors.transparent,
            //  color: Colors.blue,
            onTap: () {}),
        CircularMenuItem(
            icon: Icons.notifications_none_outlined,
            iconSize: 36,
            // margin: 12,
            padding: 10,
            margin: 20,
            iconColor: Colors.purple,
            color: Colors.transparent,
            // color: Colors.orange,
            onTap: () {}),
        CircularMenuItem(
            icon: Icons.person_outline_outlined,
            iconSize: 30,
            // margin: 12,
            margin: 34,
            iconColor: Colors.yellow,
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
