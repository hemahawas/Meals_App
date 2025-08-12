part of 'app_pages.dart';

abstract class AppRoutes {
  AppRoutes._();
  static const SPLASH = _Paths.SPLASH;
  static const HOME = _Paths.HOME;
  static const MEALDETAILS = _Paths.MEALDETAILS;
}

abstract class _Paths {
  _Paths._();
  static const SPLASH = '/';
  static const HOME = '/home';
  static const MEALDETAILS = '/mealdetails';
}
