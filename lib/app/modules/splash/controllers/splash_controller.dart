import 'package:get/get.dart';
import 'package:mdlabs_intern_task1/app/routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    navigateToHome();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offNamed(AppRoutes.HOME);
    });
  }
}
