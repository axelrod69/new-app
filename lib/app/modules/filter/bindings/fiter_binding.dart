
import 'package:boozimba/app/modules/filter/controllers/filter_contoller.dart';
import 'package:get/get.dart';



class FilterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FilterController>(
          () => FilterController(),
    );
  }
}
