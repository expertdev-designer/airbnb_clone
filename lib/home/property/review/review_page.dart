import 'package:flutter/material.dart';
import 'package:rating_summary/rating_summary.dart';

import '../../../utils/Images.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_strings.dart';
import '../../../utils/app_styles.dart';

class ReviewPage extends StatefulWidget {
  const ReviewPage({Key? key}) : super(key: key);

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: IconButton(
                icon: const Icon(Icons.arrow_back, size: 24, color: AppColors.color_black),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: AppColors.color_black,
                        size: 20,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        Strings.five_star,
                        style: AppStyles.twentysixSemiBold,
                      ),
                      const SizedBox(width: 16),
                      Text(
                        Strings.six_reviews,
                        style: AppStyles.twentysixSemiBold,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    height: 45,
                    width: 342,
                    decoration: AppStyles.searchBarBoxDecoration,
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Icon(
                            Icons.search,
                            color: AppColors.grey,
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            style: AppStyles.blackNormalTextStyle,
                            decoration: InputDecoration(
                              hintText: Strings.search,
                              hintStyle: AppStyles.greyfourteenStyle,
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30,),
                  const RatingSummary(
                    average: 4,
                    showAverage: true,
                    counterFiveStars: 20,
                    counterFourStars: 20,
                    counterThreeStars: 20,
                    counterTwoStars: 20,
                    counterOneStars: 20,
                    labelCounterFiveStars: Strings.cleanliness,
                    labelCounterFourStars: Strings.accuracy,
                    labelCounterThreeStars: Strings.communications,
                    labelCounterTwoStars: Strings.location,
                    labelCounterOneStars: Strings.check_in_text,
                    color: AppColors.light_black,
                    label: Strings.reviews,
                    counter: 6,
                  ),
                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 24,
                              backgroundColor: AppColors.color_black,
                               backgroundImage: AssetImage(Images.summertime_goa),
                            ),
                            SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                Strings.user_name,
                                style: AppStyles.fifteenGreyBlueSemibold,
                              ),
                              Text(
                                Strings.october,
                                style: AppStyles.twelveGrey,
                              )
                            ],
                          )
                          ],
                        ),
                        SizedBox(height: 20,),
                        Text(
                          Strings.lorem_ipsum,
                          style: AppStyles.fifteenGreyBlue,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 24,
                              backgroundColor: AppColors.color_black,
                              backgroundImage: AssetImage(Images.summertime_goa),
                            ),
                            SizedBox(width: 16),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  Strings.user_name,
                                  style: AppStyles.fifteenGreyBlueSemibold,
                                ),
                                Text(
                                  Strings.october,
                                  style: AppStyles.twelveGrey,
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 20,),
                        Text(
                          Strings.lorem_ipsum,
                          style: AppStyles.fifteenGreyBlue,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 24,
                              backgroundColor: AppColors.color_black,
                              backgroundImage: AssetImage(Images.summertime_goa),
                            ),
                            SizedBox(width: 16),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  Strings.user_name,
                                  style: AppStyles.fifteenGreyBlueSemibold,
                                ),
                                Text(
                                  Strings.october,
                                  style: AppStyles.twelveGrey,
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 20,),
                        Text(
                          Strings.lorem_ipsum,
                          style: AppStyles.fifteenGreyBlue,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
