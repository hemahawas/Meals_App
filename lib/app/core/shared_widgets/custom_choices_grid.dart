import 'package:flutter/material.dart';
import 'package:mdlabs_intern_task1/app/core/enums/filters.dart';
import 'package:mdlabs_intern_task1/app/core/shared_widgets/grid_item.dart';

class CustomChoicesGrid extends StatelessWidget {
  const CustomChoicesGrid({
    super.key,
    required this.choices,
    required this.selectedChoice,
    required this.onChoiceSelected,
  });
  final List<Filters> choices;
  final Filters selectedChoice;
  final Function(Filters) onChoiceSelected;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 12.0,
      runSpacing: 12.0,
      alignment: WrapAlignment.center,
      children: choices.map((choice) {
        final bool isSelected;

        isSelected = selectedChoice == choice;

        return GridItem(
          interest: choice.value,
          isSelected: isSelected,
          onTap: () => onChoiceSelected(choice),
        );
      }).toList(),
    );
  }
}
