
import 'package:boozimba/app/modules/membership/controllers/membership_details_diamond_controller.dart';
import 'package:get/get.dart';

import '../controllers/membership_controller.dart';

class MembershipDetailsDiamondBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MembershipDetailsDiamondController>(
          () => MembershipDetailsDiamondController(),
    );
  }
}





//MembershipDetailsSilverController