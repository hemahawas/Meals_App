import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mdlabs_intern_task1/app/core/values/app_constants.dart';
import 'package:mdlabs_intern_task1/app/data/services/local_storage_service.dart';

class SharedService extends GetxService {
  late Locale currentLocale;
  late ThemeData currentTheme;

  Future<SharedService> init() async {
    // Initialize the current locale and theme from local storage
    String? langCode = await Get.find<LocalStorageService>().getString(
      key: AppConstants.localeKey,
    );
    currentLocale = Locale(langCode ?? 'en');

    String? theme = await Get.find<LocalStorageService>().getString(
      key: AppConstants.themeKey,
    );
    currentTheme = theme == 'dark' ? ThemeData.dark() : ThemeData.light();

    return this;
  }
}
