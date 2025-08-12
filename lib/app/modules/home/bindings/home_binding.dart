import 'package:get/get.dart';
import 'package:mdlabs_intern_task1/app/data/providers/home_provider.dart';
import 'package:mdlabs_intern_task1/app/modules/home/controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController(homeProvider: Get.find()));
    Get.lazyPut(() => HomeProvider());
  }
}
