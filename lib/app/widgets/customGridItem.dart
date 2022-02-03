import 'package:boozimba/app/utils/CustomColors.dart';
import 'package:boozimba/app/widgets/customImageShadow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'customTextNoProperty.dart';
import 'customTextWidget.dart';

class CustomGridItem extends StatelessWidget {
  final String? svgPath;
  final String? name;

  CustomGridItem({this.svgPath, this.name});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ImageShadow(SvgPicture.asset(svgPath!)),
          SizedBox(
            height: 12,
          ),
          CustomTextNoProperty(
            name!,
            color: PrimaryColor,
            //fontSize: ,
          )
        ],
      ),
    );
  }
}
