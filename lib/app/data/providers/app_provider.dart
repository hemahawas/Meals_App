import 'package:get/get_connect/connect.dart';
import 'package:mdlabs_intern_task1/app/core/values/app_constants.dart';

class AppProvider extends GetConnect {
  @override
  Future<void> onInit() async {
    httpClient.defaultContentType = AppConstants.applicationJson;
    httpClient.followRedirects = true;
    httpClient.timeout = const Duration(seconds: 10);
  }
}
