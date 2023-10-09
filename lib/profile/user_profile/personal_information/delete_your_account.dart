import 'package:flutter/material.dart';

import '../../../utils/app_strings.dart';
import '../../../utils/app_styles.dart';

class DeleteYourAccount extends StatefulWidget {
  const DeleteYourAccount({Key? key}) : super(key: key);

  @override
  State<DeleteYourAccount> createState() => _DeleteYourAccountState();
}

class _DeleteYourAccountState extends State<DeleteYourAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Strings.delete_your_account,
              style: AppStyles.twentyFourSemiBold,
            ),
            SizedBox(height: 10),
            Text(
              Strings.before_we_delete_your_data,
              style: AppStyles.sixteenLightGrey,
            ),
            SizedBox(height: 10),
            Text(
              Strings.j_gmail,
              style: AppStyles.sixteenSemiBoldLightGrey
            ),
            SizedBox(height: 30),
            Text(
              Strings.learn_more_about_account_deletion,
              style: AppStyles.seventeenUnderlinedSemibold
            ),
            SizedBox(height: 10),
            Text(
              Strings.where_do_you_reside,
              style: AppStyles.sixteenVeryLightBlack
            ),
            SizedBox(height: 10),
            Container(
              width: 343,
              height: 55,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      "Select a reason...",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Icon(Icons.keyboard_arrow_down),
                ],
              ),
            ),
            SizedBox(height: 10),
            Text(
                Strings.why_are_you_deleting_your_account,
                style: AppStyles.sixteenVeryLightBlack
            ),
            SizedBox(height: 10),
            Container(
              width: 343,
              height: 55,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      "Select a reason...",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Icon(Icons.keyboard_arrow_down),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
