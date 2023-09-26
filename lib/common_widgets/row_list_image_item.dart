import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class RowListImageItem extends StatelessWidget {
  final String imagePath;
  final String text1;
  final String text2;
  final VoidCallback? onTap; // Define the onTap callback

  const RowListImageItem({
    required this.imagePath,
    required this.text1,
    required this.text2,
    this.onTap, // Initialize the onTap callback
  });

  @override
  Widget build(BuildContext context) {
    return InkWell( // Wrap the entire content with InkWell
      onTap: onTap, // Assign the onTap callback
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Container(
                width: 160,
                height: 106,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            SizedBox(height: 20,),
            Text(
              text1,
              style: AppStyles.semiBoldGreyBlueStyle,
            ),
            SizedBox(height: 4),
            Text(
              text2,
              style: AppStyles.listTileTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
