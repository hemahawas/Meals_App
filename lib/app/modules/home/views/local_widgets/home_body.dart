import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:mdlabs_intern_task1/app/core/models/filtered_meal_response_model.dart';
import 'package:mdlabs_intern_task1/app/core/models/meals_response_model.dart';
import 'package:mdlabs_intern_task1/app/core/shared_widgets/custom_app_bar.dart';
import 'package:mdlabs_intern_task1/app/core/values/styles.dart';
import 'package:mdlabs_intern_task1/app/modules/home/controllers/home_controller.dart';
import 'package:mdlabs_intern_task1/app/modules/home/views/local_widgets/home_meals_grid.dart';
import 'package:mdlabs_intern_task1/app/modules/home/views/local_widgets/search_field.dart';
import 'package:mdlabs_intern_task1/app/modules/home/views/local_widgets/searched_meals_grid.dart';
import 'package:mdlabs_intern_task1/app/modules/home/views/local_widgets/theme_mode_icon_button.dart';
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
        Gap(5),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: SearchField(),
        ),
        Gap(5),
        Expanded(
          child: RefreshIndicator(
            color: Colors.deepOrangeAccent,
            onRefresh: () => controller.getMeals(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: CustomScrollView(
                slivers: [
                  controller.obx(
                    (state) => state is MealsResponseModel
                        ? HomeMealsGrid(meals: state.meals ?? [])
                        : SearchedMealsGrid(
                            meals:
                                (state as FilteredMealResponseModel).meals ??
                                [],
                          ),
                    onError: (_) => SliverToBoxAdapter(
                      child: Center(
                        child: Text(
                          LocaleKeys.Error_Occured.tr,
                          style: Styles.styleMedium16,
                        ),
                      ),
                    ),
                    onEmpty: SliverToBoxAdapter(
                      child: Center(
                        child: Text(
                          LocaleKeys.No_Meals_Found.tr,
                          style: Styles.styleMedium16,
                        ),
                      ),
                    ),

                    onLoading: SliverToBoxAdapter(
                      child: const Center(
                        child: CircularProgressIndicator(
                          color: Colors.deepOrangeAccent,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
