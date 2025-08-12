import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:mdlabs_intern_task1/app/core/models/meal_model.dart';
import 'package:mdlabs_intern_task1/app/core/shared_widgets/custom_app_bar.dart';
import 'package:mdlabs_intern_task1/app/modules/home/controllers/home_controller.dart';
import 'package:mdlabs_intern_task1/app/modules/home/views/local_widgets/custom_image.dart';
import 'package:mdlabs_intern_task1/generated/locales.g.dart';

class MealDetailsView extends GetView<HomeController> {
  const MealDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    var model = Get.arguments['selectedMeal'] as MealModel;
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            Gap(20),
            CustomAppbar(
              text: LocaleKeys.Meals_Detials.tr,
              onbackPressed: () => Get.back(),
            ),
            Expanded(
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Column(
                      children: [
                        CustomImage(imageUrl: model.imageUrl),
                        Gap(5),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              model.name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        Gap(5),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            model.description,
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
