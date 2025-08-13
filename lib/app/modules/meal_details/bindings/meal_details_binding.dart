import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:mdlabs_intern_task1/app/modules/meal_details/controllers/meal_details_controller.dart';

class MealDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(MealDetailsController());
  }
}
