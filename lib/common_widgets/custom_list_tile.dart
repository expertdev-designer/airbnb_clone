import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/app_styles.dart';

class CustomListTile extends StatelessWidget {
  final String leftImageAsset;
  final double leftImageWidth;
  final double leftImageHeight;
  final String text;
  final TextStyle? textStyle;
  final String? rightImageAsset;
  final VoidCallback? onTap;
  final bool showDivider;

  const CustomListTile({
    required this.leftImageAsset,
    this.leftImageWidth = 28.0,
    this.leftImageHeight = 28.0,
    required this.text,
    this.textStyle,
    this.rightImageAsset,
    this.onTap,
    this.showDivider = true, // Default to showing the Divider
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: ListTile(
            leading: SvgPicture.asset(
              leftImageAsset,
              width: leftImageWidth,
              height: leftImageHeight,
            ),
            title: Text(
              text,
              style: textStyle ?? AppStyles.listTileTextStyle,
            ),
            trailing: rightImageAsset != null
                ? SvgPicture.asset(
              rightImageAsset!,
              width: 25,
              height: 25,
            )
                : null,
          ),
        ),
        if (showDivider) const Divider(), // Show the Divider conditionally
      ],
    );
  }
}
