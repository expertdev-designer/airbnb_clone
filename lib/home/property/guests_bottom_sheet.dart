import 'package:airbnb/utils/app_styles.dart';
import 'package:flutter/material.dart';

import '../../common_widgets/buttons/custom_button.dart';
import '../../common_widgets/buttons/plus_minus_buttons.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_strings.dart';

class GuestsBottomSheet extends StatefulWidget {
  const GuestsBottomSheet({Key? key}) : super(key: key);

  @override
  State<GuestsBottomSheet> createState() => _GuestsBottomSheetState();
}

class _GuestsBottomSheetState extends State<GuestsBottomSheet> {
  int adults = 0;
  int children = 0;
  int infants = 0;
  int pets = 0;

  void incrementAdults() {
    setState(() {
      adults++;
    });
  }

  void decrementAdults() {
    setState(() {
      if (adults > 0) {
        adults--;
      }
    });
  }

  void incrementChildren() {
    setState(() {
      children++;
    });
  }

  void decrementChildren() {
    setState(() {
      if (children > 0) {
        children--;
      }
    });
  }

  void incrementInfants() {
    setState(() {
      infants++;
    });
  }

  void decrementInfants() {
    setState(() {
      if (infants > 0) {
        infants--;
      }
    });
  }

  void incrementPets() {
    setState(() {
      pets++;
    });
  }

  void decrementPets() {
    setState(() {
      if (pets > 0) {
        pets--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.62,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top:4,),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.close, size: 24, color: AppColors.grey_blue,),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(width: 8,),
                  Text(
                    Strings.guests,
                    style: AppStyles.sixteenVeryLightBlack,
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Strings.this_place_has_a_maximum_of_four_guests,
                    style: AppStyles.elevenGreyBlueNormal,
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Strings.adults,
                            style: AppStyles.sixteenVeryLightBlack,
                          ),
                          SizedBox(height: 4,),
                          Text(
                            Strings.age_13,
                            style: AppStyles.continueTextStyle,
                          ),
                        ],
                      ),
                      IncrementDecrementButtons(
                        number: adults,
                        onIncrement: incrementAdults,
                        onDecrement: decrementAdults,
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Strings.children,
                            style: AppStyles.sixteenVeryLightBlack,
                          ),
                          SizedBox(height: 4,),
                          Text(
                            Strings.ages_2_12,
                            style: AppStyles.continueTextStyle,
                          ),
                        ],
                      ),
                      IncrementDecrementButtons(
                        number: children,
                        onIncrement: incrementChildren,
                        onDecrement: decrementChildren,
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Strings.infants,
                            style: AppStyles.sixteenVeryLightBlack,
                          ),
                          SizedBox(height: 4,),
                          Text(
                            Strings.under_2,
                            style: AppStyles.continueTextStyle,
                          ),
                        ],
                      ),
                      IncrementDecrementButtons(
                        number: infants,
                        onIncrement: incrementInfants,
                        onDecrement: decrementInfants,
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            Strings.pets,
                            style: AppStyles.sixteenVeryLightBlack,
                          ),
                          SizedBox(height: 4,),
                          Text(
                            Strings.bringing_a_service_animal,
                            style: AppStyles.underlinedVeryLightBlackSemibold,
                          ),
                        ],
                      ),
                      IncrementDecrementButtons(
                        number: pets,
                        onIncrement: incrementPets,
                        onDecrement: decrementPets,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 20,top: 8, right: 20, bottom: 8 ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Implement back button action
                    },
                    child: Text(
                      Strings.cancel,
                      style: AppStyles.sixteenUnderLineVeryLightBlack,
                    ),
                  ),
                  Container(
                    width: 90,
                    height: 50,
                    child: CustomButton(
                      text: Strings.save,
                      onPressed: () {

                      },
                      textStyle: AppStyles.sixteenTextStyle,
                      backgroundColor: AppColors.very_lightBlack,
                      borderRadius: 11,
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

