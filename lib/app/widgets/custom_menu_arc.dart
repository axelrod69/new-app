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
      toggleButtonSize: 12,
      backgroundWidget: main_content,
      radius: 80,
      items: [
        CircularMenuItem(
            icon: Icons.home_outlined,
            iconColor: Colors.blue,
            iconSize: 36,
            margin: 12,
            color: Colors.transparent,
            //color: Colors.green,
            onTap: () {}),
        CircularMenuItem(
            icon: Icons.search,
            iconSize: 36,
            margin: 12,
            iconColor: Colors.lightGreenAccent,
            color: Colors.transparent,
            //  color: Colors.blue,
            onTap: () {}),
        CircularMenuItem(
            icon: Icons.settings,
            iconSize: 36,
            margin: 12,
            color: Colors.transparent,
            // color: Colors.orange,
            onTap: () {}),
        CircularMenuItem(
            icon: Icons.chat,
            iconSize: 36,
            margin: 12,
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
