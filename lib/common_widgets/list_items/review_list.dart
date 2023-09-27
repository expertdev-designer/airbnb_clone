import 'package:flutter/material.dart';

import '../../utils/app_styles.dart';

class ReviewList extends StatelessWidget {
  final String text;
  final Widget avatar;
  final String text1;
  final String text2;

  ReviewList({
    required this.text,
    required this.avatar,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        width: 280,
        height: 278,
        decoration: AppStyles.reviewContainerBoxDecoration,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: AppStyles.listTileTextStyle,
              ),
              Spacer(),
              Align(
                alignment: Alignment.bottomLeft,
                child: Row(
                  children: [
                    Container(
                      width: 48,
                      height: 48,
                      child: avatar,
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          text1,
                          style: AppStyles.fifteenGreyBlueMedium,
                        ),
                        Text(
                          text2,
                          style: AppStyles.lightGreyTextStyle,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
