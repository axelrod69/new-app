import 'package:get/get.dart';

import '../controllers/custom_calendar_controller.dart';

class CustomCalendarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CustomCalendarController>(
      () => CustomCalendarController(),
    );
  }
}
