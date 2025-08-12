import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:mdlabs_intern_task1/app/core/values/app_colors.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      fit: BoxFit.cover,

      placeholder: (context, url) => Center(
        child: Icon(Icons.image, size: 50, color: AppColors.salmonDark),
      ),
      errorWidget: (context, url, error) => Center(
        child: Icon(Icons.error, size: 50, color: AppColors.salmonDark),
      ),
    );
  }
}
