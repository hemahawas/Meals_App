import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:mdlabs_intern_task1/app/modules/splash/controllers/splash_controller.dart';
import 'package:mdlabs_intern_task1/app/modules/splash/views/local_widgets/splash_body.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SplashBody());
  }
}
