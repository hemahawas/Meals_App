import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mdlabs_intern_task1/app/core/models/filtered_meal_model.dart';
import 'package:mdlabs_intern_task1/app/modules/home/views/local_widgets/custom_image.dart';

class SearchedMealItem extends StatelessWidget {
  const SearchedMealItem({super.key, required this.model});
  final FilteredMealModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
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
      ],
    );
  }
}
