import 'package:flutter/material.dart';
import 'package:mdlabs_intern_task1/app/core/values/app_colors.dart';

class GridItem extends StatelessWidget {
  const GridItem({
    super.key,
    required this.interest,
    required this.isSelected,
    required this.onTap,
  });
  final String interest;
  final bool isSelected;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? Colors.deepOrange : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected ? AppColors.salmonDark : Colors.grey,
            width: 1.5,
          ),
        ),
        child: Text(
          interest,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.deepOrange,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
