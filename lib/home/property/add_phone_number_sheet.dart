import 'package:airbnb/utils/app_colors.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/app_strings.dart';
import '../../utils/app_styles.dart';


class AddPhoneNumber extends StatefulWidget {
  @override
  _AddPhoneNumberState createState() => _AddPhoneNumberState();
}

class _AddPhoneNumberState extends State<AddPhoneNumber> {
  String phoneNumber = '';
  TextEditingController phoneNumberController = TextEditingController();

  void handlePhoneNumberInput(String value) {
    setState(() {
      phoneNumber = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.95,
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10, top:4,),
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
                    Strings.dates,
                    style: AppStyles.sixteenVeryLightBlack,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(
                    Strings.for_notifications_reminders_and_help_logging_in,
                    style: AppStyles.lightBlackTextStyle,
                  ),
                  Container(
                    width: 344,
                    height: 116,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 57,
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          child: CountryCodePicker(
                            onChanged: print,
                            initialSelection: 'IN',
                            favorite: ['+91'],
                            showCountryOnly: false,
                            showFlagDialog: false,
                            showFlag: false,
                            showOnlyCountryWhenClosed: true,
                            showDropDownButton: true,
                            alignLeft: true,
                          ),
                        ),
                        Container(
                          height: 57,
                          child: TextField(
                            onChanged: handlePhoneNumberInput,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: Strings.phone_number,
                              hintStyle: AppStyles.sixteenLightGrey,
                              contentPadding: EdgeInsets.all(12),
                            ),
                          ),
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
