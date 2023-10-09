import 'package:airbnb/utils/app_styles.dart';
import 'package:flutter/material.dart';

import '../../common_widgets/buttons/custom_button.dart';
import '../../common_widgets/buttons/plus_minus_buttons.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_strings.dart';

class PriceDetailsBottomSheet extends StatefulWidget {
  const PriceDetailsBottomSheet({Key? key}) : super(key: key);

  @override
  State<PriceDetailsBottomSheet> createState() => _PriceDetailsBottomSheetState();
}

class _PriceDetailsBottomSheetState extends State<PriceDetailsBottomSheet> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.48,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10, top:4,),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.close, size: 24, color: AppColors.grey_blue,),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(width: 8,),
                  Text(
                    Strings.price_details,
                    style: AppStyles.sixteenVeryLightBlack,
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            Strings.five_nights,
                            style: AppStyles.sixteenVeryLightBlack,
                          ),
                          Text(
                            Strings.total_rupees,
                            style: AppStyles.mediumGreyBlueStyle,
                          ),
                        ],
                      ),
                      SizedBox(height: 6,),
                      Text(
                        Strings.average_nightly_rate_is_rounded,
                        style: AppStyles.thirteenLightGrey,
                      ),
                    ],
                  ),
                  SizedBox(height: 18,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            Strings.cleaning_fee,
                            style: AppStyles.sixteenVeryLightBlack,
                          ),
                          Text(
                            Strings.total_rupees,
                            style: AppStyles.mediumGreyBlueStyle,
                          ),
                        ],
                      ),
                      SizedBox(height: 6,),
                      Text(
                        Strings.average_nightly_rate_is_rounded,
                        style: AppStyles.thirteenLightGrey,
                      ),
                    ],
                  ),
                  SizedBox(height: 18,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            Strings.airbnb_service_fee,
                            style: AppStyles.sixteenVeryLightBlack,
                          ),
                          Text(
                            Strings.total_rupees,
                            style: AppStyles.mediumGreyBlueStyle,
                          ),
                        ],
                      ),
                      SizedBox(height: 6,),
                      Text(
                        Strings.this_help_us_run_our_platform_and_offer,
                        style: AppStyles.thirteenLightGrey,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    Strings.total,
                    style: AppStyles.fifteenGreyBlueMedium,
                  ),
                  Text(
                    Strings.total_rupees,
                    style: AppStyles.semiBoldGreyBlueStyle,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

