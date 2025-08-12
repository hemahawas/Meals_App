import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:mdlabs_intern_task1/app/core/values/app_colors.dart';

class AreaAndCategoryDetails extends StatelessWidget {
  const AreaAndCategoryDetails({
    super.key,
    required this.area,
    required this.category,
  });

  final String area;
  final String category;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(Icons.location_on, size: 16, color: AppColors.salmonDark),
            Gap(2),
            Text(
              area,
              style: TextStyle(fontSize: 12, color: AppColors.salmonDark),
            ),
          ],
        ),
        Flexible(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            margin: EdgeInsets.only(right: 10),
            decoration: ShapeDecoration(
              color: Colors.orange[100],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
            child: AutoSizeText(
              category,
              maxLines: 1,
              minFontSize: 8,
              overflowReplacement: Text('...'),
              presetFontSizes: [12, 10, 8],
              style: TextStyle(fontSize: 12, color: AppColors.salmonDark),
            ),
          ),
        ),
      ],
    );
  }
}
