import 'package:airbnb/common_widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../utils/Images.dart';
import '../utils/app_colors.dart';
import '../utils/app_strings.dart';
import '../utils/app_styles.dart';
import 'edit_profile.dart';

class CreateProfile extends StatefulWidget {
  const CreateProfile({Key? key});

  @override
  State<CreateProfile> createState() => _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40,left: 20, right: 20),
              child: Row(
                children: [
                  const Icon(Icons.arrow_back),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                          ),
                          context: context,
                          builder: (context) {
                            return EditProfileBottomSheet(); // Display the bottom sheet here
                          },
                        );
                      },
                      child: Text(
                        Strings.edit,
                        textAlign: TextAlign.end,
                        style: AppStyles.underlinedTextStyle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Divider(),
            const SizedBox(height: 16.0),
            Container(
              width: 345,
              height: 236,
              decoration: AppStyles.containerBoxDecoration,
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  Container(
                    width: 103,
                    height: 103,
                    child: const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(Images.create_profile),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    Strings.user_name,
                    style: AppStyles.lightBlackSemiBold,
                  ),
                  Text(
                    Strings.guest,
                    style: AppStyles.semiBoldBlueStyle
                  ),
                ],
              ),
            ),
            const SizedBox(height: 26),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    Strings.identity_verification,
                    style: AppStyles.lightBlackSemiBold
                ),
                const SizedBox(height: 8),
                Text(
                    Strings.show_identity_verification,
                    style: AppStyles.lightBlackTextStyle,
                ),
                const SizedBox(height: 20),
                Container(
                  width: 159,
                  height: 50,
                  decoration: AppStyles.buttonBoxDecoration,
                  child: CustomButton(text: Strings.get_the_badge,
                      onPressed: (){

                      },
                      textStyle: AppStyles.normalSixteenTextStyle,
                    backgroundColor: AppColors.color_white,
                    borderRadius: 8,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Divider(),
            const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Strings.time_to_create_profile,
                  style: AppStyles.lightBlackNormalTwentyTwo,
                ),
                const SizedBox(height: 10),
                Text(
                 Strings.your_airbnb_profile_is_an_important_part,
                 style: AppStyles.greyfourteenStyle,
            ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              width: 343,
                height: 47,
                decoration: AppStyles.pinkGradientBoxDecoration,
                child: CustomButton(
                  text: Strings.create_profile,
                  onPressed: (){},
                  textStyle: AppStyles.sixteenTextStyle,
                ),
            ),
          ],
        ),
    );
  }
}
