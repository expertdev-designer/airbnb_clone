import 'package:airbnb/common_widgets/buttons/custom_button.dart';
import 'package:airbnb/common_widgets/list_items/review_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../common_widgets/list_items/custom_list_tile.dart';
import '../../common_widgets/list_items/rooms_list.dart';
import '../../utils/Images.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_strings.dart';
import '../../utils/app_styles.dart';

class PropertyInfo extends StatefulWidget {
  const PropertyInfo({Key? key}) : super(key: key);

  @override
  State<PropertyInfo> createState() => _PropertyInfoState();
}

class _PropertyInfoState extends State<PropertyInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 393,
                    height: 261,
                    child: Image.asset(
                      Images.summertime_goa,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 16), // Add spacing below the image
                  Padding(
                    padding: const EdgeInsets.all(20.0), // Add padding to the text
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Strings.cosy_a_frame_cabin_in_jibhi_valley,
                          style: AppStyles.twentysixSemiBold
                        ),
                        Row(
                          children: [
                            const Icon(
                                  Icons.star,
                                  color: AppColors.color_black,
                                  size: 24,
                                ),
                            const SizedBox(width: 4),
                            Text(
                                  Strings.five_star,
                                  style: AppStyles.fifteenGreyBlue,
                                ),
                            const SizedBox(width: 4),
                            const Text('.'),
                            TextButton(
                              onPressed: () {

                              },
                              child: Text(
                                Strings.eight_reviews,
                                style: AppStyles.underlinedGreyBlue
                              ),
                            ),
                            const Text('.'),
                            const SizedBox(width: 4),
                            Text(
                              Strings.jibhi_himachal_pradesh,
                              style: AppStyles.fifteenGreyBlue,
                            ),
                          ],
                        ),
                        Text(
                            Strings.india,
                            style: AppStyles.fifteenGreyBlue,
                        ),
                        const SizedBox(height: 10),
                        const Divider(),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              Strings.entire_cabin_hosted_by_akshay,
                              style: AppStyles.twentyTwoMedium,
                            ),
                            Container(
                              height: 60,
                              width: 60,
                              child: const CircleAvatar(
                                // backgroundImage: AssetImage('assets/avatar_image.png'),
                                radius: 30,
                                backgroundColor: AppColors.button_pink,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Text(
                              Strings.four_guests,
                              style: AppStyles.mediumGreyBlueStyle,
                            ),
                            const SizedBox(width: 4),
                            const Text('.'),
                            const SizedBox(width: 4),
                            Text(
                              Strings.four_bedrooms,
                              style: AppStyles.mediumGreyBlueStyle,
                            ),
                            const SizedBox(width: 4),
                            const Text('.'),
                            const SizedBox(width: 4),
                            Text(
                              Strings.two_beds,
                              style: AppStyles.mediumGreyBlueStyle,
                            ),
                            const SizedBox(width: 4),
                            const Text('.'),
                            const SizedBox(width: 4),
                            Text(
                              Strings.one_bath,
                              style: AppStyles.mediumGreyBlueStyle,
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Divider(),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            SvgPicture.asset(
                             Images.door,
                              width: 26,
                              height: 24,
                            ),
                            const SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  Strings.self_check_in,
                                  style: AppStyles.semiBoldGreyBlueStyle
                                ),
                                Text(
                                  Strings.you_can_check_in_with_the_building_staff,
                                  style: AppStyles.fifteenGreyBlue,
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            SvgPicture.asset(
                              Images.key,
                              width: 25,
                              height: 25,
                            ),
                            const SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    Strings.great_check_in_experience,
                                    style: AppStyles.semiBoldGreyBlueStyle
                                ),
                                Text(
                                  Strings.hundred_percent_of_recent_guests,
                                  style: AppStyles.fifteenGreyBlue,
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            SvgPicture.asset(
                              Images.pets,
                              width: 25,
                              height: 25,
                            ),
                            const SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    Strings.furry_friends_welcome,
                                    style: AppStyles.semiBoldGreyBlueStyle
                                ),
                                Text(
                                  Strings.hundred_percent_of_recent_guests,
                                  style: AppStyles.fifteenGreyBlue,
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Divider(),
                        const SizedBox(height: 30),
                        Text(
                          Strings.kick_back_and_relax_in_this_calm,
                          style: AppStyles.listTileTextStyle,
                        ),
                        const SizedBox(height: 30),
                        Text(
                          Strings.beautiful_a_frame_cabin,
                          style: AppStyles.listTileTextStyle,
                        ),
                        const SizedBox(height: 30),
                        Text(
                          Strings.breakfast_meals_room_heaters,
                          style: AppStyles.listTileTextStyle,
                        ),
                        const SizedBox(height: 30),
                        const Divider(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      Strings.where_you_sleep,
                      style: AppStyles.twentyTwoSemiBold,
                    ),
                  ),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        RoomsList(imagePath: Images.summertime_goa, text1: Strings.bedroom, text2: Strings.one_doublebed,),
                        RoomsList(imagePath: Images.summertime_goa, text1: Strings.living_room, text2: Strings.one_doublebed,),
                        RoomsList(imagePath: Images.summertime_goa, text1: Strings.bedroom, text2: Strings.bedroom,),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                        child: Divider(),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Strings.what_this_place_offers,
                          style: AppStyles.twentyTwoSemiBold,
                        ),
                        const SizedBox(height: 20),
                        const CustomListTile(leftImageAsset: Images.mountain, leftImageWidth: 25, leftImageHeight: 24, text: Strings.mountain_view, showDivider: false,),
                        const CustomListTile(leftImageAsset: Images.garden, leftImageWidth: 24, leftImageHeight: 24, text: Strings.garden_view, showDivider: false,),
                        const CustomListTile(leftImageAsset: Images.wifi, text: Strings.wifi, showDivider: false,),
                        const CustomListTile(leftImageAsset: Images.chair, leftImageWidth: 24, leftImageHeight: 24, text: Strings.dedicated_workspace, showDivider: false,),
                        const CustomListTile(leftImageAsset: Images.car, leftImageWidth: 24, leftImageHeight: 20,text: Strings.free_parking_on_permises, showDivider: false,),
                        const SizedBox(height: 10),
                        Center(
                          child: Container(
                            width: 323,
                              height: 53,
                              decoration: AppStyles.buttonBoxDecoration,
                              child: CustomButton(text: Strings.show_all_amenties, onPressed: () {}, textStyle: AppStyles.eighteenSemiBold,),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          Strings.where_you_be,
                          style: AppStyles.twentyTwoSemiBold,
                        ),
                        Text(
                          Strings.jibhi_himachal_pradesh_india,
                          style: AppStyles.fifteenGreyBlue,
                        ),
                        const SizedBox(height: 20),
                        Container(
                          width: 325,
                          height: 230,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextButton(
                      onPressed: () {

                      },
                      child: Text(
                          Strings.show_more,
                          style: AppStyles.underlinedGreyBlue
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ReviewList(
                          text: Strings.calm_and_peaceful,
                          avatar: const CircleAvatar(
                            radius: 30,
                            backgroundColor: AppColors.color_black,
                            backgroundImage: AssetImage(Images.userprofile),
                          ),
                          text1: Strings.user_name,
                          text2: Strings.one_month_ago,
                        ),
                        ReviewList(
                          text: Strings.calm_and_peaceful,
                          avatar: const CircleAvatar(
                            radius: 30,
                            backgroundColor: AppColors.color_black,
                            backgroundImage: AssetImage(Images.userprofile),
                          ),
                          text1: Strings.user_name,
                          text2: Strings.one_month_ago,
                        ),
                        ReviewList(
                          text: Strings.calm_and_peaceful,
                          avatar: const CircleAvatar(
                            radius: 30,
                            backgroundColor: AppColors.color_black,
                            backgroundImage: AssetImage(Images.userprofile),
                          ),
                          text1: Strings.user_name,
                          text2: Strings.one_month_ago,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: Container(
                      width: 323,
                      height: 53,
                      decoration: AppStyles.buttonBoxDecoration,
                      child: CustomButton(text: Strings.show_all_reviews, onPressed: () {}, textStyle: AppStyles.eighteenSemiBold,),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Divider(),
                        SizedBox(height: 20),
                        Text(
                          Strings.hosted_by,
                          style: AppStyles.twentyTwoSemiBold,
                        ),
                        Text(
                          Strings.joined_in,
                          style: AppStyles.lightGreyTextStyle,
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: AppColors.color_black,
                              size: 20,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              Strings.total_reviews,
                              style: AppStyles.listTileTextStyle,
                            ),
                          ],
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            const Icon(
                              Icons.verified_user,
                              color: AppColors.color_black,
                              size: 20,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              Strings.identified_verified,
                              style: AppStyles.listTileTextStyle,
                            ),
                          ],
                        ),
                        SizedBox(height: 40),
                        Text(
                          Strings.hello_i_am_host,
                          style: AppStyles.listTileTextStyle,
                        ),
                        SizedBox(height: 30),
                        Text(
                          Strings.during_your_stay,
                          style: AppStyles.semiBoldGreyBlueStyle,
                        ),
                        SizedBox(height: 4),
                        Text(
                          Strings.caretaker_and_cook_lives_nearby,
                          style: AppStyles.listTileTextStyle,
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Text(
                              Strings.language,
                              style: AppStyles.listTileTextStyle,
                            ),
                            Text(
                              Strings.english_hindi,
                              style: AppStyles.listTileTextStyle,
                            ),
                          ],
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Text(
                              Strings.response_rate,
                              style: AppStyles.listTileTextStyle,
                            ),
                            Text(
                              Strings.hundred_percent,
                              style: AppStyles.listTileTextStyle,
                            ),
                          ],
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Text(
                              Strings.response_time,
                              style: AppStyles.listTileTextStyle,
                            ),
                            Text(
                              Strings.within_an_hour,
                              style: AppStyles.listTileTextStyle,
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        Center(
                          child: Container(
                            width: 323,
                            height: 53,
                            decoration: AppStyles.buttonBoxDecoration,
                            child: CustomButton(text: Strings.contact_host, onPressed: () {}, textStyle: AppStyles.eighteenSemiBold,),
                          ),
                        ),
                        SizedBox(height: 30),
                        Text(
                          Strings.to_protect_your_payment,
                          style: AppStyles.twelveGreyBlue,
                        ),
                        SizedBox(height: 30),
                        Divider(),
                        SizedBox(height: 20),
                        Text(
                          Strings.availability,
                          style: AppStyles.twentyTwoSemiBold,
                        ),
                        SizedBox(height: 8),
                        Text(
                          Strings.october,
                          style: AppStyles.lightGreyTextStyle,
                        ),
                        SizedBox(height: 20),
                        Divider(),
                        SizedBox(height: 20),
                        Text(
                          Strings.cancellation_policy,
                          style: AppStyles.twentyTwoSemiBold,
                        ),
                        SizedBox(height: 8),
                        Text(
                          Strings.cancel_before_for_a_refund,
                          style: AppStyles.lightGreyTextStyle,
                        ),
                        SizedBox(height: 20),
                        Divider(),
                        SizedBox(height: 20),
                        Text(
                          Strings.house_rules,
                          style: AppStyles.twentyTwoSemiBold,
                        ),
                        SizedBox(height: 8),
                        Text(
                          Strings.check_in,
                          style: AppStyles.lightGreyTextStyle,
                        ),
                        Text(
                          Strings.checkout_before,
                          style: AppStyles.lightGreyTextStyle,
                        ),
                        Text(
                          Strings.four_guests_maximum,
                          style: AppStyles.lightGreyTextStyle,
                        ),
                        SizedBox(height: 12),
                        GestureDetector(
                          onTap: () {

                          },
                          child: Text(
                              Strings.show_more,
                              style: AppStyles.sixteenUnderlinedSemiboldGreyBlue
                          ),
                        ),
                        SizedBox(height: 20),
                        Divider(),
                        SizedBox(height: 20),
                        Text(
                          Strings.house_rules,
                          style: AppStyles.twentyTwoSemiBold,
                        ),
                        SizedBox(height: 8),
                        Text(
                          Strings.carbon_monoxide_alarm,
                          style: AppStyles.lightGreyTextStyle,
                        ),
                        Text(
                          Strings.smoke_alarm,
                          style: AppStyles.lightGreyTextStyle,
                        ),
                        Text(
                          Strings.must_climb_stairs,
                          style: AppStyles.lightGreyTextStyle,
                        ),
                        SizedBox(height: 12),
                         GestureDetector(
                           onTap: () {

                           },
                           child: Text(
                               Strings.show_more,
                               style: AppStyles.sixteenUnderlinedSemiboldGreyBlue
                           ),
                         ),
                        SizedBox(height: 20),
                        Divider(),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            const Icon(
                              Icons.flag,
                              color: AppColors.color_black,
                              size: 20,
                            ),
                            const SizedBox(width: 4),
                            GestureDetector(
                              onTap: () {

                              },
                              child: Text(
                                Strings.report_this_listing,
                                style: AppStyles.fifteenNormalUnderlinedGreyBlue,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Strings.price,
                      style: AppStyles.semiBoldGreyBlueStyle,
                    ),
                    Text(
                        Strings.october,
                        style: AppStyles.sixteenUnderlinedSemiboldGreyBlue
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                    width: 114,
                    height: 51,
                    child: CustomButton(text: Strings.reserve, onPressed: () {  }, textStyle: AppStyles.sixteenTextStyle, backgroundColor: AppColors.button_pink, borderRadius: 11,)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
