import 'package:airbnb/common_widgets/buttons/custom_button.dart';
import 'package:airbnb/home/property/add_phone_number_sheet.dart';
import 'package:airbnb/home/property/guests_bottom_sheet.dart';
import 'package:airbnb/home/property/pay_with_bottom_sheet.dart';
import 'package:airbnb/home/property/price_details_bottom_sheet.dart';
import 'package:flutter/material.dart';

import '../../common_widgets/editable_text_fields.dart';
import '../../contact_host/contact_host.dart';
import '../../utils/Images.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_strings.dart';
import '../../utils/app_styles.dart';
import 'cancellation_policy.dart';
import 'dates_bottom_sheet.dart';

class ConfirmAndPay extends StatefulWidget {
  const ConfirmAndPay({Key? key}) : super(key: key);

  @override
  State<ConfirmAndPay> createState() => _ConfirmAndPayState();
}

class _ConfirmAndPayState extends State<ConfirmAndPay> {
  bool isUpiIdEditingVisible = true;
  TextEditingController UpiController = TextEditingController();
  DateTimeRange selectedDates = DateTimeRange(
    start: DateTime.now(),
    end: DateTime.now(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only( top: 50, left: 40),
                child: Text(
                  Strings.cnfrm_and_pay,
                  style: AppStyles.seventeenGreyBlueSemibold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Container(
                      width: 124,
                      height: 99,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Image.asset(
                        Images.summertime_goa,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Strings.entire_rental_unit,
                          style: AppStyles.greyfourteenStyle
                        ),
                        SizedBox(height: 5),
                        Text(
                            Strings.lovely_studio_with_burj_khalifa,
                            style: AppStyles.mediumGreyBlue
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Icon(Icons.star, color: AppColors.color_black, size: 16),
                            SizedBox(width: 5),
                            Text(Strings.five_star,
                            style: AppStyles.greyBlueSmallTextStyle,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 8,
                width: double.infinity,
                color: AppColors.very_light_grey,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Strings.your_trip,
                      style: AppStyles.twentyGreyBlueSemibold,
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          Strings.dates,
                          style: AppStyles.seventeenGreyBlueSemibold,
                        ),
                        GestureDetector(
                          onTap: ()
                            async{
                              final DateTimeRange? dateTimeRange = await showDateRangePicker(
                                context: context,
                                firstDate: DateTime(2000),
                                lastDate: DateTime(3000),
                              );
                              if (dateTimeRange != null) {
                                setState(() {
                                  selectedDates = dateTimeRange;
                                });
                              }
                          },
                          child: Text(
                            Strings.edit,
                            style: AppStyles.sixteenUnderlinedSemiboldGreyBlue,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "${selectedDates.duration.inDays}",
                      style: AppStyles.greyfourteenStyle,
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          Strings.guests,
                          style: AppStyles.seventeenGreyBlueSemibold,
                        ),
                        GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                              ),
                              context: context,
                              isScrollControlled: true,
                              builder: (BuildContext context) {
                                return GuestsBottomSheet();
                              },
                            );
                          },
                          child: Text(
                            Strings.edit,
                            style: AppStyles.sixteenUnderlinedSemiboldGreyBlue,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      Strings.one_guest,
                      style: AppStyles.greyfourteenStyle,
                    ),
                  ],
                ),
              ),
              Container(
                height: 8,
                width: double.infinity,
                color: AppColors.very_light_grey,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Strings.price_details,
                      style: AppStyles.twentyGreyBlueSemibold,
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          Strings.five_nights,
                          style: AppStyles.greyfourteenStyle,
                        ),
                        Text(
                          Strings.total_rupees,
                          style: AppStyles.greyfourteenStyle,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          Strings.cleaning_fee,
                          style: AppStyles.greyfourteenStyle,
                        ),
                        Text(
                          Strings.total_rupees,
                          style: AppStyles.greyfourteenStyle,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          Strings.airbnb_service_fee,
                          style: AppStyles.greyfourteenStyle,
                        ),
                        Text(
                          Strings.total_rupees,
                          style: AppStyles.greyfourteenStyle,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Divider(),
                    SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              Strings.total,
                              style: AppStyles.semiBoldGreyBlueStyle,
                            ),
                            Text(
                              Strings.sixty_four,
                              style: AppStyles.semiBoldGreyBlueStyle,
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(18),
                                  topRight: Radius.circular(18),
                                ),
                              ),
                              context: context,
                              isScrollControlled: true,
                              builder: (context) {
                                return PriceDetailsBottomSheet();
                              },
                            );
                          },
                          child: Text(
                            Strings.more_info,
                            style: AppStyles.underlinedGreyBlueSemibold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 8,
                width: double.infinity,
                color: AppColors.very_light_grey,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Strings.pay_with,
                      style: AppStyles.twentyGreyBlueSemibold,
                    ),
                    SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: (){
                          showModalBottomSheet(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(18),
                                topRight: Radius.circular(18),
                              ),
                            ),
                            context: context,
                            isScrollControlled: true,
                            builder: (context) {
                              return PayWithBottomSheet();
                            },
                          );
                        },
                        child: Text(
                            Strings.edit,
                          style: AppStyles.sixteenUnderlinedSemiboldGreyBlue,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    EditableTextFields(
                      label: Strings.upi_id,
                      initialValue: '',
                      isEditing: isUpiIdEditingVisible,
                      controller: UpiController,
                    ),
                    SizedBox(height: 8),
                    Text(
                      Strings.example_your_username,
                      style: AppStyles.elevenGreyMedium,
                    ),
                  ],
                ),
              ),
              Container(
                height: 8,
                width: double.infinity,
                color: AppColors.very_light_grey,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Strings.required_for_your_trip,
                      style: AppStyles.semiBoldTextStyle,
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          Strings.msg_the_host,
                          style: AppStyles.sixteenVeryLightBlack,
                        ),
                        Container(
                            width: 64,
                            height: 40,
                            decoration: AppStyles.greyblueBoxDecoration,
                            child: CustomButton(
                              text: Strings.add,
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => ContactHost() ));
                              },
                              textStyle: AppStyles.mediumGreyBlueStyle,
                            ),
                        ),
                      ],
                    ),
                    Text(
                      Strings.share_why_you_are_travelling,
                      style: AppStyles.lightGreyMediumTextStyle,
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          Strings.phone_number,
                          style: AppStyles.sixteenVeryLightBlack,
                        ),
                        Container(
                          width: 64,
                          height: 40,
                          decoration: AppStyles.greyblueBoxDecoration,
                          child: CustomButton(
                            text: Strings.add,
                            onPressed: () {
                              showModalBottomSheet(
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(18),
                                    topRight: Radius.circular(18),
                                  ),
                                ),
                                context: context,
                                isScrollControlled: true,
                                builder: (context) {
                                  return AddPhoneNumber();
                                },
                              );
                            },
                            textStyle: AppStyles.mediumGreyBlueStyle,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      Strings.add_and_confirm_your_phone_number,
                      style: AppStyles.lightGreyMediumTextStyle,
                    ),
                  ],
                ),
              ),
              Container(
                height: 8,
                width: double.infinity,
                color: AppColors.very_light_grey,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Strings.cancellation_policy,
                      style: AppStyles.sixteenVeryLightBlack,
                    ),
                    SizedBox(height: 8),
                    Text(
                      Strings.cancel_before_for_a_partial_refund,
                      style: AppStyles.thirteenMediumGreyBlue,
                    ),
                  ],
                ),
              ),
              Container(
                height: 8,
                width: double.infinity,
                color: AppColors.very_light_grey,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Strings.ground_rules,
                      style: AppStyles.sixteenVeryLightBlack,
                    ),
                    SizedBox(height: 8),
                    Text(
                      Strings.we_ask_every_guest_to_remember_a_few_simple_things,
                      style: AppStyles.thirteenMediumGreyBlue,
                    ),
                    SizedBox(height: 30),
                    Center(
                      child: Container(
                        width: 343,
                        height: 53,
                        child: CustomButton(
                          text: Strings.request_to_book,
                          onPressed: () {

                          },
                          textStyle: AppStyles.sixteenMediumTextStyle,
                          backgroundColor: AppColors.button_pink,
                          borderRadius: 11,
                        ),
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
