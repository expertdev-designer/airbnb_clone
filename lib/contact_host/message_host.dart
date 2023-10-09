import 'package:airbnb/common_widgets/buttons/custom_button.dart';
import 'package:flutter/material.dart';

import '../utils/Images.dart';
import '../utils/app_colors.dart';
import '../utils/app_strings.dart';
import '../utils/app_styles.dart';


class MessageHost extends StatefulWidget {
  const MessageHost({Key? key}) : super(key: key);

  @override
  State<MessageHost> createState() => _MessageHostState();
}

class _MessageHostState extends State<MessageHost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Strings.shangrila_renao_a_luxury_cabin,
                            style: AppStyles.continueTextStyle,
                          ),
                          SizedBox(height: 6),
                          Text(
                            Strings.entire_cabin,
                            style: AppStyles.twelveGreyBlue,
                          ),
                        ],
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(14.0),
                        child: Image.asset(
                          Images.summertime_goa,
                          width: 99,
                          height: 99,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      Strings.dates,
                      style: AppStyles.sixteenVeryLightBlack,
                    ),
                    Text(
                      Strings.sep,
                      style: AppStyles.sixteenUnderlinedSemiboldGreyBlue,
                    ),
                  ],
                ),
                SizedBox(height: 30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      Strings.dates,
                      style: AppStyles.sixteenVeryLightBlack,
                    ),
                    Text(
                      Strings.one_guest,
                      style: AppStyles.sixteenUnderlinedSemiboldGreyBlue,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Strings.msg_the_host,
                  style: AppStyles.seventeenSemibold,
                ),
                SizedBox(height: 30.0),
                Center(
                  child: Container(
                    height: 120.0,
                    width: 343.0,
                    decoration: BoxDecoration(
                    border: Border.all(color: AppColors.light_grey),
                       borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: TextField(
                      maxLines: null,
                      style: AppStyles.fifteenGreyBlue,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(10.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  width: 343,
                    height: 49,
                    child: CustomButton(text: Strings.send_message, onPressed: () {}, textStyle: AppStyles.sixteenMediumTextStyle,backgroundColor: AppColors.light_black, borderRadius: 10,),),
              ],
            ),
          )
        ],
      ),
    );
  }
}
