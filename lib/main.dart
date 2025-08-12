import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mdlabs_intern_task1/app/core/values/themes.dart';
import 'package:mdlabs_intern_task1/app/data/services/local_storage_service.dart';
import 'package:mdlabs_intern_task1/app/data/services/shared_service.dart';
import 'package:mdlabs_intern_task1/app/routes/app_pages.dart';
import 'package:mdlabs_intern_task1/generated/locales.g.dart';

void main() async {
  await initServices();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translationsKeys: AppTranslation.translations,
      locale: Get.find<SharedService>().currentLocale,
      debugShowCheckedModeBanner: false,
      theme: Get.find<SharedService>().currentTheme,
      darkTheme: CustomThemes.darkTheme,
      title: 'Mealo',
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}

Future<void> initServices() async {
  Get.put(LocalStorageService());
  await Get.putAsync(() => SharedService().init());
}
