import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomListTile extends StatelessWidget {
  final String leftImageAsset;
  final double leftImageWidth; // Width for the left image
  final double leftImageHeight; // Height for the left image
  final String text;
  final String? rightImageAsset; // Make it optional

  const CustomListTile({
    required this.leftImageAsset,
    this.leftImageWidth = 28.0, // Default width is 30
    this.leftImageHeight = 28.0, // Default height is 30
    required this.text,
    this.rightImageAsset, // Make it optional
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: SvgPicture.asset(
            leftImageAsset,
            width: leftImageWidth,
            height: leftImageHeight,
          ),
          title: Text(text),
          trailing: rightImageAsset != null
              ? SvgPicture.asset(
            rightImageAsset!,
            width: 25,
            height: 25,
          )
              : null, // Use null if rightImageAsset is not provided
        ),
        const Divider(), // Add a divider after each ListTile
      ],
    );
  }
}
