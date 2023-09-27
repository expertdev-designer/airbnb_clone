import 'package:airbnb/common_widgets/list_items/custom_list_tile.dart';
import 'package:airbnb/home/home_screen.dart';
import 'package:airbnb/login/login_page.dart';
import 'package:flutter/material.dart';
import '../common_widgets/buttons/custom_button.dart';
import '../utils/Images.dart';
import '../utils/app_colors.dart';
import '../utils/app_strings.dart';
import '../utils/app_styles.dart';

class YourProfilePage extends StatelessWidget {
  const YourProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              Strings.your_profile,
              style: AppStyles.semiBoldEightyStyle
            ),
          ),
          const SizedBox(height: 3),
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
                Navigator.push(context, MaterialPageRoute(builder: (context) =>  HomeScreen() ));
              },
              textStyle: AppStyles.sixteenTextStyle,
              backgroundColor: AppColors.pink,
              borderRadius: 10,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
              children: [
                Text(
                  Strings.donot_have_an_account,
                  style: AppStyles.opacityNormalTextStyle,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage() ));
                  },
                  child: Text(
                    Strings.sign_up,
                    style: AppStyles.eightyBoldTextStyle,
                  ),
                ),
              ],
            ),
          ),
          const CustomListTile(leftImageAsset: Images.setting,
            text: Strings.setting,
            rightImageAsset: Images.right_arrow,),
          const CustomListTile(leftImageAsset: Images.accessibility,
            text: Strings.accessibility,
            rightImageAsset: Images.right_arrow,),
          const CustomListTile(leftImageAsset: Images.learn_hosting,
            text: Strings.learn_hosting,
            rightImageAsset: Images.right_arrow,),
          const CustomListTile(leftImageAsset: Images.question_mark,
            text: Strings.get_help,
            rightImageAsset: Images.right_arrow,),
          const CustomListTile(leftImageAsset: Images.notes,
            text: Strings.terms_services,
            rightImageAsset: Images.right_arrow,
              leftImageHeight: 24,
              leftImageWidth: 24,
          ),
          const CustomListTile(leftImageAsset: Images.privacy_policy,
            text: Strings.privacy_policy,
            rightImageAsset: Images.right_arrow,
            leftImageHeight: 24,
            leftImageWidth: 24,
          ),
          const CustomListTile(leftImageAsset: Images.open_source,
            text: Strings.open_source,
            rightImageAsset: Images.right_arrow,
            leftImageHeight: 22,
            leftImageWidth: 22,
          ),
          SizedBox(height: 10,),
          Text(
            Strings.version,
            style: AppStyles.opacityNormalTextStyle,
          ),
        ],
      ),
    );
  }
}
