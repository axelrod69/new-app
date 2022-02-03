

import 'package:boozimba/app/modules/filtercategory/controllers/filter_category_controller.dart';
import 'package:get/get.dart';



class FilterCategoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FilterCategoryController>(
          () => FilterCategoryController(),
    );
  }
}
