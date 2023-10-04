import 'package:airbnb/host/describe_your_place.dart';
import 'package:flutter/material.dart';

import '../common_widgets/buttons/custom_button.dart';
import '../utils/app_colors.dart';
import '../utils/app_strings.dart';
import '../utils/app_styles.dart';

class TypeOfPlace extends StatelessWidget {
  const TypeOfPlace({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 110,
                    height: 43,
                    decoration: AppStyles.veryLightGreyBoxDecoration,
                    child: CustomButton(
                      text: Strings.save_and_exit,
                      onPressed: () {

                      },
                      textStyle: AppStyles.lightBlackSemibold,
                    ),
                  ),
                  Container(
                    width: 110,
                    height: 43,
                    decoration: AppStyles.veryLightGreyBoxDecoration,
                    child: CustomButton(
                      text: Strings.questions,
                      onPressed: () {

                      },
                      textStyle: AppStyles.lightBlackSemibold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              Strings.what_type_of_place_will_guests_have,
              style: AppStyles.twentySixVeryLightBlackSemiBold,
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    // Implement back button action
                  },
                  child: Text(
                    Strings.back,
                    style: AppStyles.seventeenUnderlinedSemibold,
                  ),
                ),
                Container(
                  width: 113,
                  height: 51,
                  child: CustomButton(
                    text: Strings.next,
                    onPressed: () {

                    },
                    textStyle: AppStyles.sixteenTextStyle,
                    backgroundColor: AppColors.very_lightBlack,
                    borderRadius: 11,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
