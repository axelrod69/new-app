import 'package:boozimba/app/modules/membership/controllers/membership_details_platinum_controller.dart';
import 'package:get/get.dart';

import '../controllers/membership_controller.dart';

class MembershipDetailsPlatinumBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MembershipDetailsPlatinumController>(
          () => MembershipDetailsPlatinumController(),
    );
  }
}
