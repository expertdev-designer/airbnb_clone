import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/Images.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_strings.dart';
import '../../utils/app_styles.dart';

class HouseRules extends StatefulWidget {
  const HouseRules({Key? key}) : super(key: key);

  @override
  State<HouseRules> createState() => _HouseRulesState();
}

class _HouseRulesState extends State<HouseRules> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Text(
                    Strings.house_rules,
                    style: AppStyles.twentysixSemiBold,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  Strings.you_will_be_staying_in_someones_home,
                  style: AppStyles.continueTextStyle,
                ),
                SizedBox(height: 40),
                Text(
                  Strings.checking_in_and_out,
                  style: AppStyles.sixteenVeryLightBlack,
                ),
                SizedBox(height: 30),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.watch_later_outlined, color: AppColors.light_grey, size: 27,),
                    SizedBox(width: 12), // Add spacing
                    Text(
                      Strings.check_in,
                      style: AppStyles.fifteenGreyBlue,
                    ),
                    Text(
                      Strings.two_to_five,
                      style: AppStyles.fifteenGreyBlue,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.watch_later_outlined, color: AppColors.light_grey, size: 27,),
                    SizedBox(width: 12), // Add spacing
                    Text(
                      Strings.check_in,
                      style: AppStyles.fifteenGreyBlue,
                    ),
                    Text(
                      Strings.two_to_five,
                      style: AppStyles.fifteenGreyBlue,
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Text(
                  Strings.during_your_stay,
                  style: AppStyles.seventeenSemibold,
                ),
                SizedBox(height: 30),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(Images.three_man, width: 25, height: 20,),
                    SizedBox(width: 12),
                    Text(
                      Strings.four_guests_maximum,
                      style: AppStyles.fifteenGreyBlue,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Icon(Icons.smoke_free_outlined, color: AppColors.grey,size: 24,),
                SizedBox(width: 12),
                Text(
                  Strings.no_smoking,
                  style: AppStyles.fifteenGreyBlue,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
