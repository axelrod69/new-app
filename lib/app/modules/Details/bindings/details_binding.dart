
import 'package:boozimba/app/modules/Details/controllers/detail_controller.dart';
import 'package:get/get.dart';



class DetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailsController>(
          () => DetailsController(),
    );
  }
}
