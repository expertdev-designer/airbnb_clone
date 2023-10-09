import 'package:airbnb/common_widgets/containers/custom_border_container.dart';
import 'package:airbnb/host/describe_your_place.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../common_widgets/buttons/custom_button.dart';
import '../utils/Images.dart';
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
            SizedBox(height: 40),
            Text(
              Strings.what_type_of_place_will_guests_have,
              style: AppStyles.twentySixVeryLightBlackSemiBold,
            ),
            SizedBox(height: 20),
            CustomBorderContainer(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16, left: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Strings.an_entire_place,
                          style: AppStyles.seventeenSemibold,
                        ),
                        SizedBox(height: 4),
                        Text(
                          Strings.guests_have_the_whole_place,
                          style: AppStyles.lightGreyTextStyle,
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: SvgPicture.asset(
                        Images.home,
                        width: 30,
                        height: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            CustomBorderContainer(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 16, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Strings.a_room,
                          style: AppStyles.seventeenSemibold,
                        ),
                        Text(
                          Strings.guest_have_their_own_room_in_a_home,
                          style: AppStyles.lightGreyTextStyle,
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: SvgPicture.asset(
                        Images.door,
                        width: 28,
                        height: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            CustomBorderContainer(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 16, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Strings.a_shared_room,
                          style: AppStyles.seventeenSemibold,
                        ),
                        Text(
                          Strings.guest_have_their_own_room_in_a_home,
                          style: AppStyles.lightGreyTextStyle,
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: SvgPicture.asset(
                        Images.shared_room,
                        width: 28,
                        height: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
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
