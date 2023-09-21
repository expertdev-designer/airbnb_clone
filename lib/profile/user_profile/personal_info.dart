import 'package:flutter/material.dart';

import '../../utils/app_strings.dart';
import '../../utils/app_styles.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
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
                Strings.personal_info,
                style: AppStyles.thirtyMedium,
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  Strings.legal_name,
                  style: AppStyles.mediumGreyBlue,
                ),
                Text(
                  Strings.edit,
                  style: AppStyles.underlinedGreyBlueSemibold,
                ),
              ],
            ),
            Text(
              Strings.john_doe,
              style: AppStyles.greyfourteenStyle,
            ),
            Divider(),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  Strings.phone_number,
                  style: AppStyles.mediumGreyBlue,
                ),
                Text(
                  Strings.add,
                  style: AppStyles.underlinedGreyBlueSemibold,
                ),
              ],
            ),
            Text(
              Strings.add_a_number_so_confirmed_guests,
              style: AppStyles.greyfourteenStyle,
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
