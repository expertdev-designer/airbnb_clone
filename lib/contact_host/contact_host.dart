import 'package:airbnb/common_widgets/buttons/custom_button.dart';
import 'package:airbnb/contact_host/message_host.dart';
import 'package:flutter/material.dart';

import '../utils/Images.dart';
import '../utils/app_colors.dart';
import '../utils/app_strings.dart';
import '../utils/app_styles.dart';

class ContactHost extends StatefulWidget {
  const ContactHost({Key? key}) : super(key: key);

  @override
  State<ContactHost> createState() => _ContactHostState();
}

class _ContactHostState extends State<ContactHost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 70.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        Strings.contact_hemal_typicaly,
                        style: AppStyles.twentyGreyBlueSemibold,
                      ),
                      const CircleAvatar(
                        radius: 26,
                        backgroundImage: AssetImage(Images.summertime_goa),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Divider(),
                  SizedBox(height: 20,),
                  Text(
                    Strings.most_travellers_ask_about,
                    style: AppStyles.twentyGreyBlueSemibold,
                  ),
                  SizedBox(height: 30,),
                  Text(
                    Strings.getting_there,
                    style: AppStyles.semiBoldGreyBlueStyle,
                  ),
                  SizedBox(height: 10,),
                  Text(
                    Strings.free_parking_on_the_premises,
                    style: AppStyles.continueTextStyle,
                  ),
                  SizedBox(height: 10,),
                  Text(
                    Strings.check_in_for_this_home_is_between,
                    style: AppStyles.continueTextStyle,
                  ),
                  SizedBox(height: 26,),
                  Text(
                    Strings.house_details_and_rules,
                    style: AppStyles.semiBoldGreyBlueStyle,
                  ),
                  SizedBox(height: 10,),
                  Text(
                    Strings.no_smoking_no_parties_or_events,
                    style: AppStyles.continueTextStyle,
                  ),
                  SizedBox(height: 26,),
                  Text(
                    Strings.price_and_availability,
                    style: AppStyles.semiBoldGreyBlueStyle,
                  ),
                  SizedBox(height: 10,),
                  Text(
                    Strings.full_refund_within_limited,
                    style: AppStyles.continueTextStyle,
                  ),
                  SizedBox(height: 30,),
                  Divider(),
                  SizedBox(height: 30,),
                  Row(
                    children: [
                      Text(
                        Strings.this_home_is_available_from,
                        style: AppStyles.fifteenGreyBlue,
                      ),
                      Text(
                        Strings.book,
                        style: AppStyles.underlinedGreyBlue,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 10, right: 20, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    Strings.still_have_a_question,
                    style: AppStyles.mediumGreyBlue,
                  ),
                  Container(
                    width: 140,
                    height: 49,
                    child: CustomButton(
                        text: Strings.message_host,
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MessageHost() ));

                        },
                        textStyle: AppStyles.fifteenWhiteMedium,
                      borderRadius: 10,
                      backgroundColor: AppColors.light_black,
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
