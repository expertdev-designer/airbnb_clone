import 'package:airbnb/utils/app_colors.dart';
import 'package:airbnb/utils/app_styles.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/app_strings.dart';

class CancellationPolicyBottomSheet extends StatefulWidget {
  @override
  _CancellationPolicyBottomSheetState createState() => _CancellationPolicyBottomSheetState();
}

class _CancellationPolicyBottomSheetState extends State<CancellationPolicyBottomSheet> {
  bool switchValue = true;

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
          child: Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    Strings.cancellation_policy,
                    style: AppStyles.twentyEightSemiBold,
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  Strings.before_you_book_make_sure_you_are_comfortable_with_hosts_cancellation_policy,
                  style: AppStyles.continueTextStyle,
                ),
                SizedBox(height: 40,),
                Text(
                  Strings.cancel_by,
                  style: AppStyles.sixteenVeryLightBlack,
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Strings.oct_14,
                      style: AppStyles.sixteenVeryLightBlack,
                    ),
                    Text(
                      Strings.full_refund_get_back,
                      style: AppStyles.fifteenGreyBlue,
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Divider(),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Strings.oct_14,
                      style: AppStyles.sixteenVeryLightBlack,
                    ),
                    Text(
                      Strings.partial_refund_get_back,
                      style: AppStyles.fifteenGreyBlue,
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Divider(),
                SizedBox(height: 20,),
                Text(
                  Strings.learn_more_about_cancellation_policies,
                  style: AppStyles.underlinedVeryLightBlackSemibold,
                ),
              ],
            ),
          ),
      ),
    );
  }
}
