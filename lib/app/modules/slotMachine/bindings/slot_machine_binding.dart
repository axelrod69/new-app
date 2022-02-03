import 'package:get/get.dart';

import '../controllers/slot_machine_controller.dart';

class SlotMachineBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SlotMachineController>(
      () => SlotMachineController(),
    );
  }
}
