import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mdlabs_intern_task1/app/core/shared_widgets/custom_app_bar.dart';
import 'package:mdlabs_intern_task1/app/core/values/styles.dart';
import 'package:mdlabs_intern_task1/app/modules/home/controllers/home_controller.dart';
import 'package:mdlabs_intern_task1/app/modules/home/views/local_widgets/meal_item.dart';
import 'package:mdlabs_intern_task1/app/modules/home/views/local_widgets/theme_mode_icon_button.dart';
import 'package:mdlabs_intern_task1/app/routes/app_pages.dart';
import 'package:mdlabs_intern_task1/generated/locales.g.dart';

class HomeBody extends GetView<HomeController> {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppbar(
          text: 'Mealo',
          onbackPressed: null,
          actions: [
            IconButton(
              icon: Icon(Icons.translate),
              onPressed: () {
                controller.changeLocale();
                log('Locale changed to ${Get.locale?.languageCode}');
              },
            ),
            ThemeModeIconButton(),
          ],
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: controller.obx(
              (state) => RefreshIndicator(
                onRefresh: () => controller.getMeals(),
                child: CustomScrollView(
                  slivers: [
                    state?.meals == null
                        ? SliverToBoxAdapter(child: SizedBox.shrink())
                        : SliverGrid.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisExtent: 250,
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10,
                                ),
                            itemCount: state!.meals!.length,
                            itemBuilder: (context, index) => MealItem(
                              model: state.meals![index],
                              onTap: () {
                                Get.toNamed(
                                  AppRoutes.MEALDETAILS,
                                  arguments: {
                                    'selectedMeal': state.meals![index],
                                  },
                                );
                              },
                            ),
                          ),
                  ],
                ),
              ),
              onError: (_) => Center(
                child: Text(
                  LocaleKeys.Error_Occured.tr,
                  style: Styles.styleMedium16,
                ),
              ),
              onLoading: const Center(
                child: CircularProgressIndicator(
                  color: Colors.deepOrangeAccent,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
