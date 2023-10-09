import 'package:airbnb/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../common_widgets/buttons/custom_button.dart';
import '../../common_widgets/buttons/plus_minus_buttons.dart';
import '../../utils/Images.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_strings.dart';

class PayWithBottomSheet extends StatefulWidget {
  const PayWithBottomSheet({Key? key}) : super(key: key);

  @override
  State<PayWithBottomSheet> createState() => _PayWithBottomSheetState();
}

class _PayWithBottomSheetState extends State<PayWithBottomSheet> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.40,
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
                    Strings.pay_with,
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
                  Text(
                    Strings.add_payment_method,
                    style: AppStyles.thirteenLightGrey,
                  ),
                  SizedBox(height: 30,),
                  GestureDetector(
                    onTap: () {

                    },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                            Images.credit_card,
                          width: 32,
                          height: 22.52,
                        ),
                        SizedBox(width: 20,),
                        Text(
                          Strings.credit_or_debit_card,
                          style: AppStyles.listTileTextStyle,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: GestureDetector(
                onTap: (){

                },
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      Images.net_banking,
                      width: 32,
                      height: 24,
                    ),
                    SizedBox(width: 20,),
                    Text(
                      Strings.net_banking,
                      style: AppStyles.listTileTextStyle,
                    ),
                  ],
                ),
              ),

            ),
          ],
        ),
      ),
    );
  }
}

