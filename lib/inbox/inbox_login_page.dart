import 'package:airbnb/common_widgets/buttons/custom_button.dart';
import 'package:airbnb/login/login_page.dart';
import 'package:airbnb/utils/app_styles.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_strings.dart';

class InboxLogInPage extends StatefulWidget {
  const InboxLogInPage({super.key});

  @override
  State<InboxLogInPage> createState() => _InboxLogInPageState();
}

class _InboxLogInPageState extends State<InboxLogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Text(
                  Strings.inbox,
                  style: AppStyles.headingTextStyle
              ),
            ),
            SizedBox(height: 18),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      Strings.login_to_see_messages,
                      style: AppStyles.eighteenSemiBold
                  ),
                  SizedBox(height: 10),
                  Text(
                    Strings.once_you_login_you_find_messages,
                    style: AppStyles.sixteenGrey,
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 101,
                    height: 51,
                    child: CustomButton(text: Strings.login,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage() ));
                      },
                      textStyle: AppStyles.sixteenTextStyle,
                      backgroundColor: AppColors.button_pink,
                      borderRadius: 10,
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
