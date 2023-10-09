import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_styles.dart';

class IncrementDecrementButtons extends StatelessWidget {
  final int number;
  final Function() onIncrement;
  final Function() onDecrement;

  IncrementDecrementButtons({
    required this.number,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: onDecrement,
          child: Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: AppColors.color_white, // Adjust color as needed
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: AppColors.grey,
                width: 1,
              ),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Icon(Icons.remove, color: AppColors.grey),
              ),
            ),
          ),
        ),
        Container(
          height: 50,
          width: 50,
          child: Center(
            child: Text(
              number.toString(),
              style: AppStyles.eighteenBlackNormal,
            ),
          ),
        ),
        GestureDetector(
          onTap: onIncrement,
          child: Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: AppColors.color_white,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: AppColors.grey,
                width: 1,
              ),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Icon(Icons.add, color: AppColors.grey),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
