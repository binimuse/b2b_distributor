import 'package:get/get.dart';

import '../controllers/delivery_home_controller.dart';

class DeliveryHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DeliveryHomeController>(
      () => DeliveryHomeController(),
    );
  }
}
