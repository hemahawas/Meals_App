import 'package:get/get.dart';
import 'package:mdlabs_intern_task1/app/modules/splash/controllers/splash_controller.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
  }
}
