import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';

import '../../../common_widgets/country_code_input.dart';
import '../../../common_widgets/buttons/custom_button.dart';
import '../../../utils/app_colors.dart';
import '../../../utils/app_strings.dart';
import '../../../utils/app_styles.dart';

class PhoneNumberBottomSheet extends StatefulWidget {
  @override
  _PhoneNumberBottomSheetState createState() => _PhoneNumberBottomSheetState();
}

class _PhoneNumberBottomSheetState extends State<PhoneNumberBottomSheet> {
  String phoneNumber = '';
  TextEditingController phoneNumberController = TextEditingController();

  void handlePhoneNumberInput(String value) {
    setState(() {
      phoneNumber = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.55,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, bottom: 20),
              child: Text(
                Strings.add_phone_number,
                style: AppStyles.sixteenVeryLightBlack,
              ),
            ),
            Divider(),
            Text(
              Strings.add_a_number_so_confirmed_guests,
              style: AppStyles.greyTextStyle,
            ),
            SizedBox(height: 30),
            Container(
              width: 344,
              height: 116,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey, // You can customize the border color
                ),
              ),
              child: Column(
                children: [
                  Container(
                    height: 57, // Half of the container height
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.grey, // You can customize the border color
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
                    height: 57, // Half of the container height
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
            SizedBox(height: 10),
            Text(
              Strings.we_will_text_a_code_to_verify,
              style: AppStyles.twelveLightGrey,
            ),
            SizedBox(height: 10),
            Divider(),
            SizedBox(height: 20),
            Container(
              width: 343,
              height: 43,
              child: CustomButton(text: Strings.verify,
                onPressed: () {  },
                textStyle: AppStyles.sixteenTextStyle,
                backgroundColor: AppColors.light_black,
                borderRadius: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
