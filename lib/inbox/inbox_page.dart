import 'package:flutter/material.dart';

import '../common_widgets/custom_list_tile.dart';
import '../utils/Images.dart';
import '../utils/app_strings.dart';
import '../utils/app_styles.dart';

class InboxPage extends StatefulWidget {
  const InboxPage({super.key});

  @override
  State<InboxPage> createState() => _InboxPageState();
}

class _InboxPageState extends State<InboxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 50, left: 20, right: 20,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Strings.inbox,
              style: AppStyles.thirtyMedium
            ),
            SizedBox(height: 20),
            CustomListTile(leftImageAsset: Images.chat_bot, leftImageHeight: 56, leftImageWidth: 56,
              text: Strings.airbnb_support,
              textStyle: AppStyles.lightBlackSemibold,
            ),
            CustomListTile(leftImageAsset: Images.chat_bot, leftImageHeight: 56, leftImageWidth: 56,
              text: Strings.airbnb_support,
              textStyle: AppStyles.lightBlackSemibold,
            ),
            CustomListTile(leftImageAsset: Images.chat_bot, leftImageHeight: 56, leftImageWidth: 56,
              text: Strings.airbnb_support,
              textStyle: AppStyles.lightBlackSemibold,
            ),
          ],
        ),
      ),

    );
  }
}
