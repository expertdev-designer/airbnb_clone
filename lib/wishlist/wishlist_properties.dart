import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../common_widgets/buttons/custom_button.dart';
import '../common_widgets/list_items/property_list.dart';
import '../home/property/property_info.dart';
import '../utils/Images.dart';
import '../utils/app_colors.dart';
import '../utils/app_strings.dart';
import '../utils/app_styles.dart';

class WishlistProperties extends StatefulWidget {
  const WishlistProperties({Key? key}) : super(key: key);

  @override
  State<WishlistProperties> createState() => _WishlistPropertiesState();
}

class _WishlistPropertiesState extends State<WishlistProperties> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 50.0, ),
                  child: GestureDetector(
                      onTap: (){

                      },
                      child: const Icon(
                        Icons.arrow_back,
                        color: AppColors.color_black,
                        size: 24,
                      ),
                  ),
                ),
                 SizedBox(height: 20,),
                 Padding(
                   padding: const EdgeInsets.all(20.0),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text(
                          Strings.amazing_pools,
                          style: AppStyles.thirtySemiBold,
                        ),
                       SizedBox(height: 16),
                       Row(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Container(
                             width: 109,
                             height: 42,
                             decoration: AppStyles.veryLightGreyBoxDecoration,
                             child: CustomButton(
                               text: Strings.add_dates,
                               onPressed: () {

                               },
                               textStyle: AppStyles.thirteenMediumGreyBlue,
                             ),
                           ),
                           SizedBox(width: 10,),
                           Container(
                             width: 109,
                             height: 42,
                             decoration: AppStyles.veryLightGreyBoxDecoration,
                             child: CustomButton(
                               text: Strings.add_guests,
                               onPressed: () {

                               },
                               textStyle: AppStyles.thirteenMediumGreyBlue,
                             ),
                           ),
                         ],
                       ),
                     ],
                   ),
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
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                width: 98,
                height: 47,
                child: FloatingActionButton(
                  onPressed: () {

                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  backgroundColor: AppColors.dark_blue,
                  child: Row(
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
