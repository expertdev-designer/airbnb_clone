import 'package:flutter/material.dart';

import '../../utils/app_styles.dart';

class PropertyList extends StatelessWidget {
  final String imagePath;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final VoidCallback? onTap; // Define the onTap callback

  const PropertyList({
    required this.imagePath,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    this.onTap, // Initialize the onTap callback
  });

  @override
  Widget build(BuildContext context) {
    return InkWell( // Wrap the entire content with InkWell
      onTap: onTap, // Assign the onTap callback
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 343,
                height: 331,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text1,
                    style: AppStyles.semiBoldGreyBlueStyle,
                  ),
                  Text(
                    text2,
                    style: AppStyles.greyMediumTextStyle,
                  ),
                  Text(
                    text3,
                    style: AppStyles.greyTextStyle,
                  ),
                  Text(
                    text4,
                    style: AppStyles.semiBoldGreyBlueStyle,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
