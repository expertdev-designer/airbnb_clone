import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';

class CustomBorderContainer extends StatefulWidget {
  final Widget child;
  final double width;
  final double height;
  final double borderRadius;
  final Color initialBorderColor;
  final Color tappedBorderColor;

  const CustomBorderContainer({
    Key? key,
    required this.child,
    this.width = 342,
    this.height = 120,
    this.borderRadius = 14,
    this.initialBorderColor = AppColors.very_light_grey,
    this.tappedBorderColor = AppColors.color_black,
  }) : super(key: key);

  @override
  _CustomBorderContainerState createState() => _CustomBorderContainerState();
}


class _CustomBorderContainerState extends State<CustomBorderContainer> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isTapped = !isTapped; // Toggle the tapped state
        });
      },
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          border: Border.all(
            color: isTapped ? widget.tappedBorderColor : widget.initialBorderColor,
            width: 2,
          ),
        ),
        child: widget.child,
      ),
    );
  }
}