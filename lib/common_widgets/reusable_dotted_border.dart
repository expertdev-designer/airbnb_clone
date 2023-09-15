import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class ReusableDottedBorder extends StatelessWidget {
  final Widget? child;
  final double height;
  final double width;
  final double radius;

  ReusableDottedBorder({
    this.child,
    this.height = 79,
    this.width = 345,
    this.radius = 13,
  });

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      borderType: BorderType.RRect,
      color: AppColors.light_grey,
      dashPattern: [5],
      strokeWidth: 1,
      radius: Radius.circular(radius),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(radius)),
        child: Container(
          height: height,
          width: width,
          color: Colors.white,
          padding: const EdgeInsets.only(left: 20, top: 10),
          child: child ?? Container(), // Use an empty Container if child is null
        ),
      ),
    );
  }
}
