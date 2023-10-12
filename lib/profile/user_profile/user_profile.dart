import 'package:airbnb/common_widgets/list_items/custom_list_tile.dart';
import 'package:airbnb/home/home_screen.dart';
import 'package:airbnb/home/property/cancellation_policy.dart';
import 'package:airbnb/login/cnfrm_number.dart';
import 'package:airbnb/login/login_page.dart';
import 'package:airbnb/profile/create_profile.dart';
import 'package:airbnb/profile/user_profile/payment/payment_and_payouts.dart';
import 'package:airbnb/profile/user_profile/personal_information/delete_your_account.dart';
import 'package:airbnb/profile/user_profile/personal_information/personal_info.dart';
import 'package:airbnb/trips/trips_login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../common_widgets/buttons/custom_button.dart';
import '../../host/get_started.dart';
import '../../utils/Images.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_strings.dart';
import '../../utils/app_styles.dart';

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
                        Images.villa_image,
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
          CustomListTile(leftImageAsset: Images.person,
            text: Strings.personal_information,
            rightImageAsset: Images.right_arrow,
           onTap: () {
           Navigator.push(context, MaterialPageRoute(builder: (context) => const PersonalInfo() ));
           },
          ),
         CustomListTile(leftImageAsset: Images.shield,
            text: Strings.login_security,
            rightImageAsset: Images.right_arrow,
            onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => DeleteYourAccount() ));
            },
          ),
          CustomListTile(leftImageAsset: Images.taxes,leftImageHeight: 20,
            leftImageWidth: 24,
            text: Strings.paymenyts_payouts,
            rightImageAsset: Images.right_arrow,
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentsAndPayouts() ));
          },
          ),
          const CustomListTile(leftImageAsset: Images.accessibility,
            text: Strings.accessibility,
            rightImageAsset: Images.right_arrow,
          ),
          CustomListTile(leftImageAsset: Images.payments,
            text: Strings.taxes,
            rightImageAsset: Images.right_arrow,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ConfirmYourNumberPage() ));
            },
          ),
          CustomListTile(leftImageAsset: Images.languages,
            text: Strings.translation,
            rightImageAsset: Images.right_arrow,
            onTap: () {

            },
          ),
          const CustomListTile(leftImageAsset: Images.bell,leftImageHeight: 25,
            leftImageWidth: 25,
            text: Strings.notification,
            rightImageAsset: Images.right_arrow,
          ),
          const CustomListTile(leftImageAsset: Images.lock,
            text: Strings.privacy_and_sharing,
            rightImageAsset: Images.right_arrow,
          ),
          const CustomListTile(leftImageAsset: Images.office_bag, leftImageHeight: 21,
            leftImageWidth: 25,
            text: Strings.travel_for_work,
            rightImageAsset: Images.right_arrow,
          ),
          SizedBox(height: 20),
          Text(
            Strings.hosting,
            style: AppStyles.twentyTwoSemiBold,
          ),
          SizedBox(height: 20),
          CustomListTile(leftImageAsset: Images.double_arrow,
            text: Strings.switch_to_hosting,
            rightImageAsset: Images.right_arrow,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => GetStarted() ));
            },
          ),
          SizedBox(height: 20),
          Text(
            Strings.support,
            style: AppStyles.twentyTwoSemiBold,
          ),
          SizedBox(height: 20),
          const CustomListTile(leftImageAsset: Images.question_mark,
            text: Strings.visit_help_center,
            rightImageAsset: Images.right_arrow,
          ),
          const CustomListTile(leftImageAsset: Images.safety_issue,
            text: Strings.get_help_safety_issue,
            rightImageAsset: Images.right_arrow,
          ),
          const CustomListTile(leftImageAsset: Images.headphones,
            text: Strings.report_neighbourhood,
            rightImageAsset: Images.right_arrow,
          ),
          const CustomListTile(leftImageAsset: Images.tutorial,
            text: Strings.how_airbnb_works,
            rightImageAsset: Images.right_arrow,
          ),
          const CustomListTile(leftImageAsset: Images.pen,
            text: Strings.give_us_feedback,
            rightImageAsset: Images.right_arrow,
          ),

        ],
      ),
    );
  }
}
