import 'package:boozimba/app/widgets/imagePreView.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/image_pre_view_controller.dart';

class ImagePreViewView extends GetView<ImagePreViewController> {
  final List<String> images = [
    "https://www.fabhotels.com/blog/wp-content/uploads/2018/10/Irish-House.jpg",
    "https://www.jointhegrid.in/wp-content/uploads/2018/05/Lego_Bar-1.jpg",
    "https://www.dineout.co.in/blog/wp-content/uploads/2019/08/1505109_300571723430399_1477425614_n-700x400.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container());
  }
}
