import 'dart:developer';

import 'package:get/get.dart';
import 'package:mdlabs_intern_task1/app/core/models/meals_response_model.dart';
import 'package:mdlabs_intern_task1/app/data/providers/home_provider.dart';

class HomeController extends GetxController
    with StateMixin<MealsResponseModel> {
  HomeProvider homeProvider;
  HomeController({required this.homeProvider});

  bool isDarkMode = Get.isDarkMode;

  @override
  void onInit() {
    super.onInit();
    getMeals();
  }

  Future getMeals() async {
    change(null, status: RxStatus.loading());

    try {
      MealsResponseModel mealsResponse = await homeProvider.getMeals();
      if (mealsResponse.meals == null || mealsResponse.meals!.isEmpty) {
        change(null, status: RxStatus.empty());
      } else {
        change(mealsResponse, status: RxStatus.success());
      }
    } catch (error) {
      log('Home Controller: Error fetching meals: $error');
      change(null, status: RxStatus.error());
    }
  }

  void changeLocale() {
    homeProvider.changeLang();
  }

  void changeTheme(String theme) {
    isDarkMode = !isDarkMode;
    homeProvider.changeTheme(theme);
    update(['themeMode']);
  }
}
