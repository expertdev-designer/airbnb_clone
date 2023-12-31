import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/app_colors.dart';

class ElevatedCustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final double? borderRadius;
  final TextStyle? textStyle;
  final double? imageWidth;
  final double? imageHeight;
  final String svgImagePath;

  ElevatedCustomButton({
    required this.text,
    required this.onPressed,
    required this.textStyle,
    this.backgroundColor,
    this.borderRadius,
    this.imageWidth,
    this.imageHeight,
    required this.svgImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(borderRadius ?? 0.0),
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius ?? 0.0),
          border: Border.all(color: AppColors.color_black.withOpacity(0.50), width: 0.8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              svgImagePath,
              width: imageWidth ?? 24,
              height: imageHeight ?? 24,
            ),
            SizedBox(width: 4),
            Text(
              text,
              style: textStyle,
            ),
          ],
        ),
      ),
    );
  }
}
