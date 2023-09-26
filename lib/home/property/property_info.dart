import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../common_widgets/custom_list_tile.dart';
import '../../common_widgets/row_list_image_item.dart';
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                          backgroundImage: AssetImage('assets/avatar_image.png'),
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
                      SizedBox(width: 20),
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
                      SizedBox(width: 20),
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
                      SizedBox(width: 20),
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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  RowListImageItem(imagePath: Images.summertime_goa, text1: Strings.bedroom, text2: Strings.one_doublebed,),
                  RowListImageItem(imagePath: Images.summertime_goa, text1: Strings.living_room, text2: Strings.one_doublebed,),
                  RowListImageItem(imagePath: Images.summertime_goa, text1: Strings.bedroom, text2: Strings.bedroom,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
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
                  CustomListTile(leftImageAsset: Images.mountain, leftImageWidth: 25, leftImageHeight: 18, text: Strings.bedroom, textStyle: AppStyles.sixteenTextStyle, showDivider: false,),
                  const CustomListTile(leftImageAsset: Images.book, text: Strings.bedroom, showDivider: false,),
                  const CustomListTile(leftImageAsset: Images.book, text: Strings.bedroom, showDivider: false,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
