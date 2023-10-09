import 'package:airbnb/host/type_of_place.dart';
import 'package:flutter/material.dart';

import '../common_widgets/buttons/custom_button.dart';
import '../utils/app_colors.dart';
import '../utils/app_strings.dart';
import '../utils/app_styles.dart';

class DescribeYourPlace extends StatefulWidget {
  const DescribeYourPlace({super.key});

  @override
  State<DescribeYourPlace> createState() => _DescribeYourPlaceState();
}

class _DescribeYourPlaceState extends State<DescribeYourPlace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 110,
                      height: 43,
                      decoration: AppStyles.veryLightGreyBoxDecoration,
                      child: CustomButton(
                        text: Strings.save_and_exit,
                        onPressed: () {

                        },
                        textStyle: AppStyles.lightBlackSemibold,
                      ),
                    ),
                    Container(
                      width: 110,
                      height: 43,
                      decoration: AppStyles.veryLightGreyBoxDecoration,
                      child: CustomButton(
                        text: Strings.questions,
                        onPressed: () {

                        },
                        textStyle: AppStyles.lightBlackSemibold,
                      ),
                    ),
                  ],
                ),
              ),
            SizedBox(height: 40),
            Text(
              Strings.which_of_these_best_describes_your_place,
              style: AppStyles.twentySixVeryLightBlackSemiBold,
            ),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8, // Spacing between columns
                mainAxisSpacing: 8, // Spacing between rows
                childAspectRatio: 1.25,
              ),
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                return CustomGridItem(index: index);
              },
            ),
            Spacer(),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Implement back button action
                    },
                    child: Text(
                      Strings.back,
                      style: AppStyles.seventeenUnderlinedSemibold,
                    ),
                  ),
                  Container(
                    width: 113,
                    height: 51,
                    child: CustomButton(
                      text: Strings.next,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const TypeOfPlace() ));
                      },
                      textStyle: AppStyles.sixteenTextStyle,
                      backgroundColor: AppColors.very_lightBlack,
                      borderRadius: 11,
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}

class CustomGridItem extends StatelessWidget {
  const CustomGridItem({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165,
      height: 116,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: Color(0xFFD9D9D9), // Border color
        ),
      ),
      child: Center(
        child: Text(
          'Item $index', // You can customize the content of each grid item
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
