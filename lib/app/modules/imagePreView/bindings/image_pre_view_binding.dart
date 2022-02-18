import 'package:get/get.dart';

import '../controllers/image_pre_view_controller.dart';

class ImagePreViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ImagePreViewController>(
      () => ImagePreViewController(),
    );
  }
}
