import 'package:boozimba/app/modules/home/controllers/home_tab_controller.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeTabBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeTabController>(
          () => HomeTabController(),
    );
  }
}
