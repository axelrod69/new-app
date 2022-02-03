import 'package:boozimba/app/modules/membership/controllers/membership_details_silver_controller.dart';
import 'package:get/get.dart';

import '../controllers/membership_controller.dart';

class MembershipDetailsSilverBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MembershipDetailsSilverController>(
          () => MembershipDetailsSilverController(),
    );
  }
}





//MembershipDetailsSilverController