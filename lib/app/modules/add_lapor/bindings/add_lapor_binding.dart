import 'package:get/get.dart';

import '../controllers/add_lapor_controller.dart';

class AddLaporBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddLaporController>(
      () => AddLaporController(),
    );
  }
}
