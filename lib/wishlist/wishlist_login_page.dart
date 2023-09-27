import 'package:airbnb/common_widgets/buttons/custom_button.dart';
import 'package:airbnb/inbox/inbox_login_page.dart';
import 'package:airbnb/utils/app_styles.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_strings.dart';

class WishlistLogInPage extends StatefulWidget {
  const WishlistLogInPage({super.key});

  @override
  State<WishlistLogInPage> createState() => _WishlistLogInPageState();
}

class _WishlistLogInPageState extends State<WishlistLogInPage> {
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
                  Strings.wishlist,
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
                      Strings.login_to_view_your_wishlists,
                      style: AppStyles.eighteenSemiBold
                  ),
                  SizedBox(height: 10),
                  Text(
                    Strings.you_can_create_view_or_edit_wishlists,
                    style: AppStyles.sixteenGrey,
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 101,
                    height: 51,
                    child: CustomButton(text: Strings.login,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => InboxLogInPage() ));
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
