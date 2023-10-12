import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/Images.dart';
import '../../utils/app_strings.dart';
import '../../utils/app_styles.dart';

class SafetyAndProperty extends StatefulWidget {
  const SafetyAndProperty({Key? key}) : super(key: key);

  @override
  State<SafetyAndProperty> createState() => _SafetyAndPropertyState();
}

class _SafetyAndPropertyState extends State<SafetyAndProperty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Strings.safety_and_property,
                style: AppStyles.twentyGreyBlueSemibold,
              ),
              SizedBox(height: 20,),
              Text(
                Strings.avoid_surprises_by_looking_over_these,
                style: AppStyles.lightGreyTextStyle,
              ),
              SizedBox(height: 20,),
              Text(
                Strings.safety_devices,
                style: AppStyles.listTileTextStyle,
              ),
              SizedBox(height: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(Images.carbon_monoxide_not),
                      SizedBox(width: 16,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Strings.carbon_monoxide_alarm_not_supported,
                            style: AppStyles.fifteenGreyBlue,
                          ),
                          SizedBox(height: 2,),
                          Text(
                            Strings.the_host_hasnot_reported_a_carbon_monoxide_alarm,
                            style: AppStyles.thirteenLightGrey,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Divider(),
              SizedBox(height: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        Images.smoke_alarm_not,
                      ),
                      SizedBox(width: 16,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Strings.smoke_alarm_not_supported,
                            style: AppStyles.fifteenGreyBlue,
                          ),
                          SizedBox(height: 2,),
                          Text(
                            Strings.the_host_hasnot_reported_a_carbon_monoxide_alarm,
                            style: AppStyles.thirteenLightGrey,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
