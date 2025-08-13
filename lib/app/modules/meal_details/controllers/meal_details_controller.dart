import 'package:get/get.dart';
import 'package:mdlabs_intern_task1/app/core/models/meal_model.dart';

class MealDetailsController extends GetxController {
  late MealModel meal;
  @override
  void onInit() {
    meal = Get.arguments['selectedMeal'] as MealModel;
    super.onInit();
  }
}
