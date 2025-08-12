import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mdlabs_intern_task1/app/core/values/styles.dart';
import 'package:mdlabs_intern_task1/generated/locales.g.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.fastfood, size: 100, color: Colors.deepOrange),
            SizedBox(height: 20),
            Text(
              'Mealo',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              LocaleKeys.For_Dilicious_Meals.tr,
              style: Styles.styleMedium16,
            ),
          ],
        ),
      ),
    );
  }
}
