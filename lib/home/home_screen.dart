import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../common_widgets/advance_switch.dart';
import '../common_widgets/list_item.dart';
import '../utils/Images.dart';
import '../utils/app_colors.dart';
import '../utils/app_strings.dart';
import '../utils/app_styles.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool switchValue = true;
  final _controller = ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
           Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: GestureDetector(
                onTap: () {
                  // Handle tap on the search bar
                },
                child: Container(
                  width: 292,
                  height: 47,
                  decoration: AppStyles.searchBoxDecoration,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          Images.search,
                          width: 18,
                          height: 18,
                        ),
                        const SizedBox(width: 10),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                Strings.where_to,
                                style: AppStyles.normalSmallTextStyle,
                              ),
                              Text(
                                Strings.anywhere,
                                style: AppStyles.opacitySeventyStyle,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ListItem(
                  imagePath: Images.beach, text: 'london',
                ),
                ListItem(
                  imagePath: Images.farm, text: 'Farm',
                ),
                ListItem(
                  imagePath: Images.beach, text: 'london',
                ),
                ListItem(
                  imagePath: Images.farm, text: 'Farm',
                ),
                ListItem(
                  imagePath: Images.beach, text: 'london',
                ),
                ListItem(
                  imagePath: Images.farm, text: 'Farm',
                ),
                ListItem(
                  imagePath: Images.beach, text: 'london',
                ),
                ListItem(
                  imagePath: Images.farm, text: 'Farm',
                ),
                ListItem(
                  imagePath: Images.beach, text: 'london',
                ),
                ListItem(
                  imagePath: Images.farm, text: 'Farm',
                ),
                // Add more items as needed
              ],
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Container(
              width: 334,
              height: 65,
              decoration: AppStyles.taxBoxDecoration,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: Text(
                      Strings.total_taxes,
                      style: AppStyles.continueTextStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 24.0),
                    child: AdvancedSwitch(
                      controller: _controller,
                      activeColor: Colors.green,
                      inactiveColor: Colors.grey,
                      borderRadius:
                      const BorderRadius.all(Radius.circular(15)),
                      width: 52.0,
                      height: 27.0,
                      enabled: true,
                      disabledOpacity: 0.5,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Center(
                  child: Stack(
                    children: [
                      Container(
                        width: 350,
                        height: 380,
                        child: Image.asset(
                          Images.property,
                          width: 350,
                          height: 380,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        bottom: 20,
                        left: 15,
                        right: 15,
                        child: Container(
                          width: 323,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 20,
                        right: 20,
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 24,
                        ),
                      ),
                    ],
                  ),
                ),
        ],
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                width: 122,
                height: 47,
                child: FloatingActionButton(
                  onPressed: () {
                    // Handle FAB tap
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  backgroundColor: AppColors.dark_blue,
                  child: Row( // Use Row to combine icon and text
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(Images.location_icon,
                      color: AppColors.color_white,
                      ),
                      SizedBox(width: 8), // Adjust spacing between icon and text
                      Text(
                        Strings.map,
                        style: AppStyles.whiteNormalTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

