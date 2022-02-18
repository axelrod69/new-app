import 'package:boozimba/app/data/data.dart';
import 'package:boozimba/app/modules/booking/view/booking_view.dart';
import 'package:boozimba/app/modules/home/views/home_tab_view.dart';
import 'package:boozimba/app/widgets/customHome.dart';
import 'package:boozimba/app/widgets/customHomeDetails.dart';
import 'package:boozimba/app/widgets/homeProducts.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:stories_for_flutter/stories_for_flutter.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    // var w = MediaQuery.of(context).size.width;
    // var h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
      children: [StoryScreen(stories: stories), BookingView()],
    ));
  }
}
