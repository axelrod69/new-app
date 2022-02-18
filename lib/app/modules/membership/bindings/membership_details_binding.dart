import 'package:boozimba/app/modules/membership/controllers/membership_details_controller.dart';
import 'package:get/get.dart';

import '../controllers/membership_controller.dart';

class MembershipDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MembershipDetailsController>(
          () => MembershipDetailsController(),
    );
  }
}
