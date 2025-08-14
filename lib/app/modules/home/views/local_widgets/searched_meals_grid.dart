import 'package:flutter/material.dart';
import 'package:mdlabs_intern_task1/app/core/models/filtered_meal_model.dart';
import 'package:mdlabs_intern_task1/app/modules/home/views/local_widgets/searched_meal_item.dart';

class SearchedMealsGrid extends StatelessWidget {
  const SearchedMealsGrid({super.key, required this.meals});
  final List<FilteredMealModel> meals;

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
      itemBuilder: (context, index) => SearchedMealItem(model: meals[index]),
    );
    ;
  }
}
