import 'package:flutter/material.dart';

import '../common_widgets/custom_button.dart';
import '../common_widgets/custom_list_tile.dart';
import '../utils/Images.dart';
import '../utils/app_colors.dart';
import '../utils/app_strings.dart';
import '../utils/app_styles.dart';

class TripsPage extends StatefulWidget {
  const TripsPage({super.key});

  @override
  State<TripsPage> createState() => _TripsPageState();
}

class _TripsPageState extends State<TripsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 50, left: 20, right: 20,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
                Strings.trip,
                style: AppStyles.thirtyMedium
            ),
            SizedBox(height: 20),
            Divider(),
            SizedBox(height: 30),
            Text(
                Strings.no_trips_booked_yet,
                style: AppStyles.semiBoldTextStyle
            ),
            SizedBox(height: 10),
            Text(
                Strings.time_to_dust_off,
                style: AppStyles.continueTextStyle
            ),
            SizedBox(height: 20),
            Container(
                width: 156,
                height: 48,
                decoration: AppStyles.greyblueBoxDecoration,
                child: CustomButton(text: Strings.start_searching,
                  onPressed: () {  },
                  textStyle: AppStyles.semiBoldGreyBlueStyle
                ),
            ),
            SizedBox(height: 30),
            Divider(),
            SizedBox(height: 30),
            Row(
              children: [
                Text(
                    Strings.cant_find_your_reservation,
                    style: AppStyles.continueTextStyle
                ),
                Text(
                    Strings.visit_the_help_center,
                    style: AppStyles.underlinedGreyBlue
                ),
              ],
            ),
            Text(
                Strings.help_center,
                style: AppStyles.underlinedGreyBlue
            ),
          ],
        ),
      ),
    );
  }
}
