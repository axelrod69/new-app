import 'dart:ui';

import 'package:boozimba/app/utils/CustomColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuListTile extends StatelessWidget {
  final String? iconPath;
  final String? title;

  MenuListTile({this.iconPath, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        //

        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Material(
            elevation: 5,
            color: Colors.transparent,

            shadowColor: PrimaryGolden.withOpacity(0.25),
            borderRadius: BorderRadius.circular(100),
            // height: MediaQuery.of(context).size.height * 0.06,
            // width: MediaQuery.of(context).size.width * 0.05,
            // decoration: BoxDecoration(
            //   // color: Colors.black,
            //   shape: BoxShape.circle,
            //   // borderRadius: BorderRadius.circular(10),
            //   boxShadow: [
            //     BoxShadow(
            //       color: PrimaryGolden.withOpacity(0.12),
            //       blurRadius: 2.0,
            //       spreadRadius: 0.05, // changes position of shadow
            //     ),
            //   ],
            // ),

            child: Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.002),
              child: SvgPicture.asset(
                iconPath!,
                // width: MediaQuery.of(context).size.width * 0.1,
                height: MediaQuery.of(context).size.height * 0.05,
                color: Colors.white,
              ),
            ),
            // child:
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.02,
          ),
          Center(
            child: Text(
              title!,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.width * 0.035),
            ),
          )
        ],
      ),
    );
  }
}
