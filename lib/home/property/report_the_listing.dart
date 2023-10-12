import 'package:airbnb/common_widgets/buttons/custom_button.dart';
import 'package:airbnb/common_widgets/list_items/check_list_tile.dart';
import 'package:airbnb/common_widgets/list_items/custom_list_tile.dart';
import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_strings.dart';
import '../../utils/app_styles.dart';

class ReportTheListing extends StatefulWidget {
  const ReportTheListing({Key? key}) : super(key: key);

  @override
  State<ReportTheListing> createState() => _ReportTheListingState();
}

class _ReportTheListingState extends State<ReportTheListing> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Text(
                Strings.why_are_you_reporting_this_listing,
                style: AppStyles.twentysixSemiBold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              Strings.this_wont_be_shared_with_the_host,
              style: AppStyles.lightGreyTextStyle,
            ),
            SizedBox(height: 20),
            CheckListTile(title: Strings.its_inaccurate_or_incorrect, textStyle: AppStyles.listTileTextStyle,),
            Divider(),
            CheckListTile(title: Strings.its_not_a_real_place_to_stay, textStyle: AppStyles.listTileTextStyle,),
            Divider(),
            CheckListTile(title: Strings.its_a_scam, textStyle: AppStyles.listTileTextStyle,),
            Divider(),
            CheckListTile(title: Strings.its_offensive, textStyle: AppStyles.listTileTextStyle,),
            Divider(),
            CheckListTile(title: Strings.its_something_else, textStyle: AppStyles.listTileTextStyle,),
            Divider(),
            Spacer(),
            Container(
                width: 343,
                height: 52,
                child: CustomButton(text: Strings.next, onPressed: (){}, textStyle: AppStyles.sixteenMediumTextStyle, backgroundColor: AppColors.light_black,borderRadius: 10,),
            ),
          ],
        ),
      ),
    );
  }
}

