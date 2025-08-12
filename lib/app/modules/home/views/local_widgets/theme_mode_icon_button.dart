import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mdlabs_intern_task1/app/modules/home/controllers/home_controller.dart';

class ThemeModeIconButton extends StatelessWidget {
  const ThemeModeIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      id: 'themeMode',
      builder: (controller) => AnimatedCrossFade(
        crossFadeState: controller.isDarkMode
            ? CrossFadeState.showSecond
            : CrossFadeState.showFirst,
        firstChild: IconButton(
          icon: Icon(Icons.light_mode),
          onPressed: () {
            controller.changeTheme('dark');
            log('isDarkMode: ${Get.isDarkMode}');
            log('Theme changed to dark mode');
          },
        ),
        secondChild: IconButton(
          icon: Icon(Icons.dark_mode),
          onPressed: () {
            controller.changeTheme('light');
            log('isDarkMode: ${Get.isDarkMode}');
            log('Theme changed to light mode');
          },
        ),
        duration: Duration(milliseconds: 300),
      ),
    );
  }
}
