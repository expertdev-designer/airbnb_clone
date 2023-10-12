import 'package:airbnb/common_widgets/list_items/custom_list_tile.dart';
import 'package:airbnb/profile/user_profile/payment/payment_methods.dart';
import 'package:airbnb/profile/user_profile/user_profile.dart';
import 'package:airbnb/utils/app_styles.dart';
import 'package:flutter/material.dart';

import '../../../utils/Images.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_strings.dart';

class PaymentsAndPayouts extends StatefulWidget {
  const PaymentsAndPayouts({Key? key}) : super(key: key);

  @override
  State<PaymentsAndPayouts> createState() => _PaymentsAndPayoutsState();
}

class _PaymentsAndPayoutsState extends State<PaymentsAndPayouts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: IconButton(
                icon: Icon(Icons.arrow_back, size: 24, color: AppColors.color_black,),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Strings.paymenyts_payouts,
                    style: AppStyles.twentyEightSemiBold,
                  ),
                  SizedBox(height: 20,),
                  Text(
                    Strings.travelling,
                    style: AppStyles.fourteenGreyBlueSemiBold,
                  ),
                  SizedBox(height: 10,),
                  CustomListTile(
                    leftImageAsset: Images.payments_method,
                    text: Strings.payments_method,
                    textStyle: AppStyles.fifteenGreyBlue,
                    rightImageAsset: Images.right_arrow,
                    showDivider: false,
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentMethods()));
                    },
                  ),
                  CustomListTile(
                    leftImageAsset: Images.your_payments,
                    text: Strings.your_payments,
                    textStyle: AppStyles.fifteenGreyBlue,
                    rightImageAsset: Images.right_arrow,
                    showDivider: false,
                  ),
                  CustomListTile(
                    leftImageAsset: Images.coupon,
                    text: Strings.credits_and_coupons,
                    textStyle: AppStyles.fifteenGreyBlue,
                    rightImageAsset: Images.right_arrow,
                    showDivider: false,
                  ),
                  SizedBox(height: 20,),
                  Divider(),
                  SizedBox(height: 20,),
                  CustomListTile(
                    leftImageAsset: Images.taxes,
                    leftImageHeight: 24,
                    leftImageWidth: 24,
                    text: Strings.payouts_method,
                    textStyle: AppStyles.fifteenGreyBlue,
                    rightImageAsset: Images.right_arrow,
                    showDivider: false,
                  ),
                  CustomListTile(
                    leftImageAsset: Images.transaction_history,
                    text: Strings.transaction_history,
                    textStyle: AppStyles.fifteenGreyBlue,
                    rightImageAsset: Images.right_arrow,
                    showDivider: false,
                  ),
                ],
              ),
            ),
          ],
        ),
    );
  }
}
