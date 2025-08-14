import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mdlabs_intern_task1/app/core/models/meal_model.dart';
import 'package:mdlabs_intern_task1/app/modules/home/views/local_widgets/meal_item.dart';
import 'package:mdlabs_intern_task1/app/routes/app_pages.dart';

class HomeMealsGrid extends StatelessWidget {
  const HomeMealsGrid({super.key, required this.meals});
  final List<MealModel> meals;

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: 250,
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: meals.length,
      itemBuilder: (context, index) => MealItem(
        model: meals[index],
        onTap: () {
          Get.toNamed(
            AppRoutes.MEALDETAILS,
            arguments: {'selectedMeal': meals[index]},
          );
        },
      ),
    );
  }
}
