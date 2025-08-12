import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:mdlabs_intern_task1/app/modules/home/bindings/home_binding.dart';
import 'package:mdlabs_intern_task1/app/modules/home/views/home_view.dart';
import 'package:mdlabs_intern_task1/app/modules/home/views/meal_details_view.dart';
import 'package:mdlabs_intern_task1/app/modules/splash/bindings/splash_binding.dart';
import 'package:mdlabs_intern_task1/app/modules/splash/views/splash_view.dart';

part 'app_routes.dart';

abstract class AppPages {
  AppPages._();

  static const INITIAL = AppRoutes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(name: _Paths.HOME, page: () => HomeView(), binding: HomeBinding()),
    GetPage(
      name: _Paths.MEALDETAILS,
      page: () =>
          MealDetailsView(), // Placeholder, replace with actual MealDetailsView
    ),
  ];
}
