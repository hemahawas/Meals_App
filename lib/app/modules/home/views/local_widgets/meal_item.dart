import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:mdlabs_intern_task1/app/core/models/meal_model.dart';
import 'package:mdlabs_intern_task1/app/modules/home/controllers/home_controller.dart';
import 'package:mdlabs_intern_task1/app/modules/home/views/local_widgets/area_and_category_details.dart';
import 'package:mdlabs_intern_task1/app/modules/home/views/local_widgets/custom_image.dart';

class MealItem extends GetView<HomeController> {
  const MealItem({super.key, required this.model, required this.onTap});
  final MealModel model;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: CustomImage(imageUrl: model.imageUrl),
            ),
          ),
          Gap(10),
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(model.name, overflow: TextOverflow.ellipsis),
          ),
          Gap(5),
          AreaAndCategoryDetails(area: model.area, category: model.category),
        ],
      ),
    );
  }
}
