import 'package:flutter/material.dart';
import 'package:mdlabs_intern_task1/app/core/values/styles.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
    required this.text,
    this.onbackPressed,
    this.actions,
  });
  final String text;
  final VoidCallback? onbackPressed;
  final List<Widget>? actions;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              onbackPressed != null
                  ? IconButton(
                      padding: EdgeInsets.zero,
                      alignment: Alignment.centerLeft,
                      onPressed: onbackPressed,
                      icon: Icon(Icons.arrow_back),
                    )
                  : const SizedBox.shrink(),
            ],
          ),
          Row(
            mainAxisAlignment: actions != null
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.center,
            children: [
              Text(text, style: Styles.styleSemiBold24),
              actions != null
                  ? Row(mainAxisSize: MainAxisSize.min, children: actions!)
                  : const SizedBox.shrink(),
            ],
          ),
        ],
      ),
    );
  }
}
