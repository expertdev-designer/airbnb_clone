import 'package:airbnb/common_widgets/buttons/custom_button.dart';
import 'package:airbnb/host/step1.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_strings.dart';
import '../../../utils/app_styles.dart';
import '../utils/Images.dart';
import '../utils/app_colors.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            Text(
              Strings.its_easy_to_get_started_on_airbnb,
              style: AppStyles.thirtytwoSemiBold
            ),
            SizedBox(height: 30),
            Text(
                Strings.one_tell_us_about_your_place,
                style: AppStyles.seventeenSemibold
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      Strings.share_some_basic_info,
                      style: AppStyles.greyfourteenStyle
                  ),
                  Image.asset(Images.bed),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Divider(),
            SizedBox(height: 16.0),
            Text(
                Strings.make_it_stand_out,
                style: AppStyles.seventeenSemibold
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      Strings.add_five_or_more_photos,
                      style: AppStyles.greyfourteenStyle
                  ),
                  Image.asset(Images.stand_out),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Divider(),
            SizedBox(height: 16.0),
            Text(
                Strings.finish_up_and_publish,
                style: AppStyles.seventeenSemibold
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      Strings.choose_if_you_like_to_start,
                      style: AppStyles.greyfourteenStyle
                  ),
                  Image.asset(Images.house_door),
                ],
              ),
            ),
            Spacer(),
            Center(
              child: Container(
                  width: 343,
                  height: 57,
                  child: CustomButton(
                    text: Strings.get_started,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Step1Hosting() ));
                    },
                    textStyle: AppStyles.sixteenTextStyle,
                    backgroundColor: AppColors.button_pink,
                    borderRadius: 10,
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
