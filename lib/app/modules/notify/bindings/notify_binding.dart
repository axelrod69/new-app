import 'package:boozimba/app/modules/membership/controllers/membership_controller.dart';
import 'package:boozimba/app/modules/notify/controllers/notify_controller.dart';
import 'package:get/get.dart';



class NotifyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NotifyController>(
          () => NotifyController(),
    );
  }
}
