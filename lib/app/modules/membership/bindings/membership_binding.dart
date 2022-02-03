import 'package:boozimba/app/modules/membership/controllers/membership_controller.dart';
import 'package:get/get.dart';

import '../controllers/membership_controller.dart';

class MembershipBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MembershipController>(
      () => MembershipController(),
    );
  }
}
