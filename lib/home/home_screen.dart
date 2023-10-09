import 'package:airbnb/common_widgets/list_items/property_list.dart';
import 'package:airbnb/home/property/property_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../common_widgets/advance_switch.dart';
import '../common_widgets/list_items/places_list.dart';
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
          SingleChildScrollView(
            child: Column(
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
                  PlacesList(
                    imagePath: Images.beach, text: 'london',
                  ),
                  PlacesList(
                    imagePath: Images.farm, text: 'Farm',
                  ),
                  PlacesList(
                    imagePath: Images.beach, text: 'london',
                  ),
                  PlacesList(
                    imagePath: Images.farm, text: 'Farm',
                  ),
                  PlacesList(
                    imagePath: Images.beach, text: 'london',
                  ),
                  PlacesList(
                    imagePath: Images.farm, text: 'Farm',
                  ),
                  PlacesList(
                    imagePath: Images.beach, text: 'london',
                  ),
                  PlacesList(
                    imagePath: Images.farm, text: 'Farm',
                  ),
                  PlacesList(
                    imagePath: Images.beach, text: 'london',
                  ),
                  PlacesList(
                    imagePath: Images.farm, text: 'Farm',
                  ),
                  // Add more items as needed
                ],
              ),
            ),
                const SizedBox(height: 10),
                PropertyList(
                    imagePath: Images.summertime_goa,
                      text1: Strings.tiracol_india,
                      text2: Strings.kilometer_away,
                      text3: Strings.sep,
                      text4: Strings.price_night,
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PropertyInfo() ));
                  },
                  ),
                PropertyList(
                  imagePath: Images.summertime_goa,
                  text1: Strings.tiracol_india,
                  text2: Strings.kilometer_away,
                  text3: Strings.sep,
                  text4: Strings.price_night,
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PropertyInfo() ));
                  },
                ),
                PropertyList(
                  imagePath: Images.summertime_goa,
                  text1: Strings.tiracol_india,
                  text2: Strings.kilometer_away,
                  text3: Strings.sep,
                  text4: Strings.price_night,
                  onTap: () {

                  },
                ),
                PropertyList(
                  imagePath: Images.summertime_goa,
                  text1: Strings.tiracol_india,
                  text2: Strings.kilometer_away,
                  text3: Strings.sep,
                  text4: Strings.price_night,
                  onTap: () {

                  },
                ),
                PropertyList(
                  imagePath: Images.summertime_goa,
                  text1: Strings.tiracol_india,
                  text2: Strings.kilometer_away,
                  text3: Strings.sep,
                  text4: Strings.price_night,
                  onTap: () {

                  },
                ),
             ],
            ),
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                width: 98,
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
                      SvgPicture.asset(
                        Images.location_icon,
                      color: AppColors.color_white,
                        height: 20,
                        width: 15,
                      ),
                      SizedBox(width: 8),
                      Text(
                        Strings.map,
                        style: AppStyles.whiteMediumTextStyle,
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

