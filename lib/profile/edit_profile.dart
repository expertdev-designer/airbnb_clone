import 'package:airbnb/utils/app_colors.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../common_widgets/advance_switch.dart';
import '../common_widgets/buttons/custom_button.dart';
import '../common_widgets/list_items/custom_list_tile.dart';
import '../common_widgets/buttons/eleveated_custom_button.dart';
import '../utils/Images.dart';
import '../utils/app_strings.dart';
import '../utils/app_styles.dart';

class EditProfileBottomSheet extends StatefulWidget {
  @override
  _EditProfileBottomSheetState createState() => _EditProfileBottomSheetState();
}

class _EditProfileBottomSheetState extends State<EditProfileBottomSheet> {
  bool switchValue = true;
  final _controller = ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.9,
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 15),
            Text(
              Strings.edit_profile,
              style: AppStyles.eighteenSemiBold,
            ),
            const SizedBox(height: 15),
            Container(
              width: double.infinity,
              height: 1,
              color: AppColors.divider_color,
              child: Divider(),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 196,
                            height: 196,
                            child: const CircleAvatar(
                              backgroundImage: AssetImage(Images.create_profile),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            child: Container(
                              width: 79,
                              height: 34,
                              child: ElevatedCustomButton(text: Strings.add, onPressed: (){}, textStyle: AppStyles.semiBoldGreyBlueStyle, svgImagePath: Images.camera, imageHeight: 12, imageWidth: 16, borderRadius: 20, backgroundColor: AppColors.color_white,),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Strings.your_profile,
                            style: AppStyles.lightBlacktwentyTwo,
                          ),
                          const SizedBox(height: 6),
                          Text(
                            Strings.the_information_you_share,
                            style: AppStyles.greyfourteenStyle,
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const CustomListTile(leftImageAsset: Images.cap,
                        text: Strings.where_i_went_to_school,
                      ),
                      const CustomListTile(leftImageAsset: Images.office_bag, leftImageHeight: 22, leftImageWidth: 22,
                        text: Strings.my_work,
                      ),
                      const CustomListTile(leftImageAsset: Images.globe,
                        text: Strings.where_i_live,
                      ),
                      const CustomListTile(leftImageAsset: Images.languages,
                        text: Strings.language_i_speak,
                      ),
                      const CustomListTile(leftImageAsset: Images.ballon,
                        text: Strings.decade_i_was_born,
                      ),
                      const CustomListTile(leftImageAsset: Images.music,
                        text: Strings.my_favourite_song,
                        rightImageAsset: Images.right_arrow,
                      ),
                      const CustomListTile(leftImageAsset: Images.heart, leftImageHeight: 22, leftImageWidth: 22,
                        text: Strings.my_obsession,
                      ),
                      const CustomListTile(leftImageAsset: Images.fun_fact,
                        text: Strings.my_fun_fact,
                      ),
                      const CustomListTile(leftImageAsset: Images.skill,
                        text: Strings.my_most_useless_skill,
                      ),
                      const CustomListTile(leftImageAsset: Images.book, leftImageHeight: 24, leftImageWidth: 24,
                        text: Strings.my_biography_title_would_be,
                      ),
                      const CustomListTile(leftImageAsset: Images.clock,
                        text: Strings.my_hobbies,
                      ),
                      const CustomListTile(leftImageAsset: Images.pets, leftImageHeight: 24, leftImageWidth: 24,
                        text: Strings.pets,
                      ),
                      const CustomListTile(leftImageAsset: Images.breakfast,
                        text: Strings.What_for_breakfast,
                      ),
                      const CustomListTile(leftImageAsset: Images.hand,
                        text: Strings.things_i_always_do_for_guests,
                      ),
                      const CustomListTile(leftImageAsset: Images.stars,
                        text: Strings.what_makes_my_home_unique,
                      ),
                      const SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Strings.about_you,
                            style: AppStyles.semiBoldTextStyle,
                          ),
                          const SizedBox(height: 20),
                          DottedBorder(
                            borderType: BorderType.RRect,
                            color: AppColors.light_grey,
                            dashPattern: [5],
                            strokeWidth: 1,
                            radius: const Radius.circular(13),
                            child: ClipRRect(
                              borderRadius: const BorderRadius.all(Radius.circular(13)),
                              child: Container(
                                height: 79,
                                width: 345,
                                color: Colors.white,
                                padding: const EdgeInsets.only(left: 20, top: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      Strings.write_something_fun_and_punchy,
                                      style: AppStyles.lightGreyTextStyle,
                                    ),
                                    SizedBox(height: 4,),
                                    Text(
                                      Strings.add_intro,
                                      style: AppStyles.underlinedGreyBlue,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Text(
                            Strings.what_youre_into,
                            style: AppStyles.semiBoldTextStyle,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            Strings.find_common_ground,
                            style: AppStyles.lightGreyTextStyle,
                          ),
                          const SizedBox(height: 30),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: DottedBorder(
                                  borderType: BorderType.RRect,
                                  color: AppColors.light_grey,
                                  dashPattern: [5],
                                  strokeWidth: 1,
                                  radius: const Radius.circular(20),
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                                    child: Container(
                                      height: 36,
                                      width: 91,
                                      color: Colors.white,
                                      child: Center(
                                        child: SvgPicture.asset( Images.plus ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 12),
                              GestureDetector(
                                onTap: () {},
                                child: DottedBorder(
                                  borderType: BorderType.RRect,
                                  color: AppColors.light_grey,
                                  dashPattern: [5],
                                  strokeWidth: 1,
                                  radius: const Radius.circular(20),
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                                    child: Container(
                                      height: 36,
                                      width: 91,
                                      color: Colors.white,
                                      child: Center(
                                        child: SvgPicture.asset( Images.plus ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 12),
                              GestureDetector(
                                onTap: () {},
                                child: DottedBorder(
                                  borderType: BorderType.RRect,
                                  color: AppColors.light_grey,
                                  dashPattern: [5],
                                  strokeWidth: 1,
                                  radius: const Radius.circular(20),
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                                    child: Container(
                                      height: 36,
                                      width: 91,
                                      color: Colors.white,
                                      child: Center(
                                        child: SvgPicture.asset( Images.plus ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                          Text(
                            Strings.add_interests_and_supports,
                            style: AppStyles.underlinedGreyBlue,
                          ),
                          const SizedBox(height: 30),
                          Divider(),
                          const SizedBox(height: 40),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                Strings.your_past_trips,
                                style: AppStyles.semiBoldTextStyle,
                              ),
                              AdvancedSwitch(
                                controller: _controller,
                                activeColor: Colors.black,
                                inactiveColor: Colors.grey,
                                borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                                width: 48.0,
                                height: 33.0,
                                enabled: true,
                                disabledOpacity: 0.5,
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(
                            Strings.show_the_destinations,
                            style: AppStyles.lightGreyTextStyle,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
            width: double.infinity,
            height: 1,
            color: AppColors.divider_color,
            child: Divider(),
            ),
            const SizedBox(height: 20),
            Container(
              width: 343,
              height: 49,
              child: CustomButton(
                text: Strings.done,
                onPressed: () {},
                textStyle: AppStyles.sixteenTextStyle,
                backgroundColor: AppColors.light_black,
                borderRadius: 10,
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
