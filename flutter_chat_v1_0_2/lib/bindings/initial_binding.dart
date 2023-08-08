import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    // here we init our controllers or initial things
    Get.lazyPut(() => LoginController());
  }
}
