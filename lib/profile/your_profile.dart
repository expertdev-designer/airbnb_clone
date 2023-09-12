import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../common_widgets/custom_button.dart';
import '../login/cnfrm_number.dart';
import '../utils/Images.dart';
import '../utils/app_colors.dart';
import '../utils/app_strings.dart';
import '../utils/app_styles.dart';

class YourProfilePage extends StatelessWidget {
  final List<Map<String, String>> profileTiles = [
    {
      'leftImageAsset': Images.setting,
      'text': Strings.setting,
      'rightImageAsset': Images.right_arrow,
    },
    {
      'leftImageAsset': Images.accessibility,
      'text': Strings.accessibility,
      'rightImageAsset': Images.right_arrow,
    },
    {
      'leftImageAsset': Images.learn_hosting,
      'text': Strings.learn_hosting,
      'rightImageAsset': Images.right_arrow,
    },
    {
      'leftImageAsset': Images.question_mark,
      'text': Strings.get_help,
      'rightImageAsset': Images.right_arrow,
    },
    {
      'leftImageAsset': Images.notes,
      'text': Strings.terms_services,
      'rightImageAsset': Images.right_arrow,
    },
    {
      'leftImageAsset': Images.privacy_policy,
      'text': Strings.privacy_policy,
      'rightImageAsset': Images.right_arrow,
    },
    {
      'leftImageAsset': Images.open_source,
      'text': Strings.open_source,
      'rightImageAsset': Images.right_arrow,
    },
  ];

   YourProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Heading
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Text(
              Strings.your_profile,
              style: AppStyles.semiBoldEightyStyle
            ),
          ),
          const SizedBox(height: 16.0),
          Text(
            Strings.login_to_start,
            style: AppStyles.normalBlueStyle,
          ),
          const SizedBox(height: 30),
          Container(
            width: 343,
            height: 58,
            child: CustomButton(
              text: Strings.login,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ConfirmYourNumberPage() ));
              },
              textStyle: AppStyles.sixteenTextStyle,
              backgroundColor: AppColors.pink,
              borderRadius: 30,
            ),
          ),
          Row(
            children: [
              Text(
                Strings.donot_have_an_account,
                style: AppStyles.opacityNormalTextStyle,
              ),
              TextButton(
                onPressed: () {
                  // Handle resend code button press
                },
                child: Text(
                  Strings.sign_up,
                  style: AppStyles.eightyBoldTextStyle,
                ),
              ),
            ],
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: profileTiles.length,
            itemBuilder: (context, index) {
              final tile = profileTiles[index];
              return ListTile(
                leading: SvgPicture.asset(
                  tile['leftImageAsset']!,
                  width: 30,
                  height: 30,
                ),
                title: Text(tile['text']!),
                trailing: SvgPicture.asset(
                  tile['rightImageAsset']!,
                  width: 30,
                  height: 30,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
