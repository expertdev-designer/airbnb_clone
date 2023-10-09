import 'package:airbnb/host/describe_your_place.dart';
import 'package:flutter/material.dart';

import '../common_widgets/buttons/custom_button.dart';
import '../utils/app_colors.dart';
import '../utils/app_strings.dart';
import '../utils/app_styles.dart';

class Step1Hosting extends StatelessWidget {
  const Step1Hosting({Key? key});

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
            SizedBox(height: 16.0),
             Center(
               child: Container(
                  width: 343,
                  height: 343,
                ),
             ),
            SizedBox(height: 20),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Strings.step_one,
                    style: AppStyles.seventeenSemibold,
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    Strings.tell_us_about_your_place,
                    style: AppStyles.thirtytwoSemiBold,
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    Strings.in_this_step_we_will_ask_you_which_type_of_property,
                    style: AppStyles.sixteenGrey,
                  ),
                ],
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => DescribeYourPlace() ));
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
