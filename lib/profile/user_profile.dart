import 'package:airbnb/common_widgets/custom_list_tile.dart';
import 'package:airbnb/home/home_screen.dart';
import 'package:airbnb/login/login_page.dart';
import 'package:airbnb/profile/create_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../common_widgets/custom_button.dart';
import '../utils/Images.dart';
import '../utils/app_colors.dart';
import '../utils/app_strings.dart';
import '../utils/app_styles.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    Strings.profile,
                    style: AppStyles.semiBoldEightyStyle
                ),
                GestureDetector(
                  onTap: () {

                  },
                  child: SvgPicture.asset(
                    Images.bell,
                    width: 22,
                    height: 25.14,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => CreateProfile() ));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      child: const CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage(Images.userprofile),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Strings.user_name,
                            style: AppStyles.userNameTextStyle,
                          ),
                          Text(
                            Strings.show_profile,
                            style: AppStyles.greyTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    // Add your onTap logic here
                  },
                  child: SvgPicture.asset(Images.right_arrow, width: 27, height: 27,),
                ),
              ],
            ),
          ),
          Divider(),
          SizedBox(height: 15),
          GestureDetector(
            onTap: () {
              // Add your onTap logic here
            },
            child: Container(
              width: 345,
              height: 118,
              decoration: AppStyles.containerBoxDecoration,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20, left: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Strings.airbnb_your_place,
                            style: AppStyles.eighteenSemiBold,
                          ),
                          SizedBox(height: 8),
                          Text(
                            Strings.simple_to_get_setup,
                            style: AppStyles.thirteenGreyBlue,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: SvgPicture.asset(
                        Images.th_image,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 15),
          Divider(),
          SizedBox(height: 10),
          Text(
            Strings.setting,
            style: AppStyles.twentyTwoSemiBold,
          ),
          SizedBox(height: 10),
          const CustomListTile(leftImageAsset: Images.person,
            text: Strings.personal_information,
            rightImageAsset: Images.right_arrow,),
          const CustomListTile(leftImageAsset: Images.shield,
            text: Strings.login_security,
            rightImageAsset: Images.right_arrow,),
          const CustomListTile(leftImageAsset: Images.payments,
            text: Strings.paymenyts_payouts,
            rightImageAsset: Images.right_arrow,),
          const CustomListTile(leftImageAsset: Images.accessibility,
            text: Strings.accessibility,
            rightImageAsset: Images.right_arrow,),
          const CustomListTile(leftImageAsset: Images.taxes, leftImageHeight: 21,
            leftImageWidth: 25,
            text: Strings.taxes,
            rightImageAsset: Images.right_arrow,
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
