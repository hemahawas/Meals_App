import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mdlabs_intern_task1/app/core/models/meals_response_model.dart';
import 'package:mdlabs_intern_task1/app/core/values/app_constants.dart';
import 'package:mdlabs_intern_task1/app/core/values/endpoint_constants.dart';
import 'package:mdlabs_intern_task1/app/data/providers/app_provider.dart';
import 'package:mdlabs_intern_task1/app/data/services/local_storage_service.dart';

class HomeProvider extends AppProvider {
  Future<MealsResponseModel> getMeals() async {
    final response = await httpClient.get(EndpointConstants.allMeals);
    if (response.status.hasError) {
      throw Exception('Failed to load meals');
    }
    final mealsResponse = MealsResponseModel.fromJson(response.body);
    return mealsResponse;
  }

  changeLang() {
    String? currentLang = Get.locale?.languageCode;
    String newLang = currentLang == 'en' ? 'ar' : 'en';
    Get.updateLocale(Locale(newLang));
    Get.find<LocalStorageService>().saveString(AppConstants.localeKey, newLang);
  }

  changeTheme(String theme) {
    Get.changeTheme(theme == 'light' ? ThemeData.light() : ThemeData.dark());
    Get.changeThemeMode(theme == 'light' ? ThemeMode.light : ThemeMode.dark);
    Get.find<LocalStorageService>().saveString(AppConstants.themeKey, theme);
  }
}
