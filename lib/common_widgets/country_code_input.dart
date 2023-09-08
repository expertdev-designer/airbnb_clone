import 'package:airbnb/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/Images.dart';
import '../utils/app_strings.dart';

class CountryCodeInput extends StatelessWidget {
  final String initialSelection;
  final ValueChanged<CountryCode?> onChanged;
  final TextEditingController controller;

  const CountryCodeInput({
    Key? key,
    required this.initialSelection,
    required this.onChanged,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CountryCodePicker(
          initialSelection: initialSelection,
          onChanged: onChanged,
          showFlag: false,
          textStyle: AppStyles.opacityNormalTextStyle,
          builder: (countryCode) {
            return Row(
              children: [
                Text(
                  countryCode!.dialCode!,
                  style: AppStyles.opacityNormalTextStyle,
                ),
                SizedBox(width: 4),
                SvgPicture.asset(
                  Images.down_arrow, // Replace with your custom down arrow icon
                  width: 4,
                  height: 8,
                ),
              ],
            );
          },
        ),
        SizedBox(width: 30),
        Expanded(
          child: TextField(
            controller: controller,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              hintText: Strings.enter_number,
              hintStyle: AppStyles.opacityNormalTextStyle,
            ),
          ),
        ),
      ],
    );
  }
}
