import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:mdlabs_intern_task1/app/core/enums/filters.dart';
import 'package:mdlabs_intern_task1/app/core/shared_widgets/custom_choices_grid.dart';
import 'package:mdlabs_intern_task1/app/modules/home/controllers/home_controller.dart';

class SearchField extends GetView<HomeController> {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: 'Search for meals',
            prefixIcon: Icon(Icons.search),
            suffixIcon: Padding(
              padding: const EdgeInsets.all(5.0),
              child: IconButton(
                style: ButtonStyle(
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      side: BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                ),
                onPressed: () {
                  controller.toggleSlection();
                },
                icon: Icon(Icons.filter_list_rounded),
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide: BorderSide(color: Colors.grey),
            ),
          ),

          onSubmitted: (value) => controller.getSearchedMeals(value),
        ),
        Gap(10),
        GetBuilder<HomeController>(
          id: 'filterButton',
          builder: (controller) => controller.isFilterButtonSelected
              ? GetBuilder<HomeController>(
                  id: 'filters',
                  builder: (controller) => CustomChoicesGrid(
                    choices: [Filters.category, Filters.area],
                    selectedChoice: controller.selectedFilter,
                    onChoiceSelected: (filter) {
                      controller.selectFilter(filter);
                    },
                  ),
                )
              : SizedBox.shrink(),
        ),
      ],
    );
  }
}
