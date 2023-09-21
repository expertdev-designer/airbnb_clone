import 'package:flutter/material.dart';

import '../common_widgets/custom_button.dart';
import '../common_widgets/custom_list_tile.dart';
import '../utils/Images.dart';
import '../utils/app_colors.dart';
import '../utils/app_strings.dart';
import '../utils/app_styles.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({super.key});

  @override
  State<WishlistPage> createState() => _WishlistPage();
}

class _WishlistPage extends State<WishlistPage> {
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
                Strings.wishlist,
                style: AppStyles.thirtyMedium
            ),
            SizedBox(height: 50),
            Text(
                Strings.create_your_first_wishlist,
                style: AppStyles.twentyGreyBlueSemibold,
            ),
            SizedBox(height: 10),
            Text(
              Strings.as_you_search,
              style: AppStyles.greyfourteenStyle,
            ),
          ],
        ),
      ),
    );
  }
}
