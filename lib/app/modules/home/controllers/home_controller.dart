import 'dart:developer';

import 'package:get/get.dart';
import 'package:mdlabs_intern_task1/app/core/enums/filters.dart';
import 'package:mdlabs_intern_task1/app/core/models/filtered_meal_model.dart';
import 'package:mdlabs_intern_task1/app/core/models/filtered_meal_response_model.dart';
import 'package:mdlabs_intern_task1/app/core/models/home_response_model.dart';
import 'package:mdlabs_intern_task1/app/core/models/meals_response_model.dart';
import 'package:mdlabs_intern_task1/app/data/providers/home_provider.dart';

class HomeController extends GetxController with StateMixin<HomeResponseModel> {
  HomeProvider homeProvider;
  HomeController({required this.homeProvider});

  bool isDarkMode = Get.isDarkMode;

  bool isFilterButtonSelected = false;
  Filters selectedFilter = Filters.non;

  void toggleSlection() {
    isFilterButtonSelected = !isFilterButtonSelected;
    update(['filterButton']);
  }

  void selectFilter(Filters filter) {
    if (selectedFilter == filter) {
      selectedFilter = Filters.non;
    } else {
      selectedFilter = filter;
    }

    update(['filters']);
  }

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

  Future<void> getSearchedMeals(String query) async {
    change(null, status: RxStatus.loading());
    try {
      FilteredMealResponseModel searchedmealsResponse = await homeProvider
          .getSearchedMeals(query, selectedFilter);
      if (searchedmealsResponse.meals == null ||
          searchedmealsResponse.meals!.isEmpty) {
        change(null, status: RxStatus.empty());
      } else {
        change(searchedmealsResponse, status: RxStatus.success());
      }
    } catch (error) {
      log('Meal Search Controller: Error fetching searched meals: $error');
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
