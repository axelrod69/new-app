import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/custom_calendar_controller.dart';

class CustomCalendarView extends GetView<CustomCalendarController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CustomCalendarView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'CustomCalendarView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
