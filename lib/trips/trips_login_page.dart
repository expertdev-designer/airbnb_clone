import 'package:airbnb/common_widgets/buttons/custom_button.dart';
import 'package:airbnb/utils/app_styles.dart';
import 'package:airbnb/wishlist/wishlist_login_page.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_strings.dart';

class TripLogInPage extends StatefulWidget {
  const TripLogInPage({super.key});

  @override
  State<TripLogInPage> createState() => _TripLogInPageState();
}

class _TripLogInPageState extends State<TripLogInPage> {
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
                Strings.trip,
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
                    Strings.no_trips_yet,
                    style: AppStyles.eighteenSemiBold
                  ),
                  SizedBox(height: 10),
                  Text(
                    Strings.when_you_are_ready_to_plan_your_next_trip,
                    style: AppStyles.sixteenGrey,
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 101,
                    height: 51,
                    child: CustomButton(text: Strings.login,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => WishlistLogInPage() ));
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
