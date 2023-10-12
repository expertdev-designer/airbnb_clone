import 'package:airbnb/common_widgets/buttons/custom_button.dart';
import 'package:airbnb/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/Images.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_strings.dart';

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({Key? key}) : super(key: key);

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: IconButton(
                icon: const Icon(Icons.arrow_back, size: 24, color: AppColors.color_black),
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
                    Strings.payment_methods,
                    style: AppStyles.twentyEightSemiBold,
                  ),
                  SizedBox(height: 10,),
                  Text(
                    Strings.add_a_payment_method_using_our_secure_payment,
                    style: AppStyles.fourteenGreyMedium,
                  ),
                  SizedBox(height: 40,),
                  Container(
                    width: 233,
                    height: 58,
                      child: CustomButton(text: Strings.add_payment_method, onPressed: (){}, textStyle: AppStyles.sixteenMediumTextStyle, backgroundColor: AppColors.very_lightBlack, borderRadius: 10,),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    width: 344,
                    height: 284,
                    decoration: AppStyles.eighteenVeryLightGrey,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(Images.pay_hand, width: 45, height: 30,),
                          SizedBox(height: 20,),
                          Text(
                            Strings.make_all_payments_through_airbnb,
                            style: AppStyles.seventeenGreyBlueSemibold,
                          ),
                          SizedBox(height: 20,),
                          Text(
                            Strings.always_pay_and_communicate_through_airbnb_to_ensure,
                            style: AppStyles.fifteenGreyBlueMedium,
                          ),
                        ],
                      ),
                    ),
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
