import 'package:boozimba/app/modules/overview/controllers/overview_controller.dart';
import 'package:get/get.dart';



class OverViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OverViewController>(
          () => OverViewController(),
    );
  }
}
