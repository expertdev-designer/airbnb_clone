import 'package:airbnb/login/login_page.dart';
import 'package:airbnb/profile/your_profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../common_widgets/buttons/custom_button.dart';
import '../common_widgets/more_option_bottom_sheet.dart';
import '../home/home_screen.dart';
import '../utils/app_colors.dart';
import '../utils/app_strings.dart';
import '../utils/app_styles.dart';

class ConfirmYourNumberPage extends StatefulWidget {
  @override
  _ConfirmYourNumberPageState createState() => _ConfirmYourNumberPageState();
}

class _ConfirmYourNumberPageState extends State<ConfirmYourNumberPage> {
  TextEditingController _codeController = TextEditingController();

  void _showMoreOptionsBottomSheet() {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return MoreOptionsBottomSheet(); // Use the new widget here
      },
    );
  }

  @override
  void dispose() {
    _codeController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage() ));
                        },
                      ),
                      Text(
                        Strings.confirm_your_number,
                        style: AppStyles.opacityEightyStyle,
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 2.0,
                    height: 30.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25), // Add left padding
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        Strings.enter_the_code,
                        style: AppStyles.blackNormalTextStyle,
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Container(
                    width: 344.0,
                    height: 55.0,
                    decoration: AppStyles.pinBoxDecoration,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 40, top: 10, right: 40, bottom: 10),
                        child: PinCodeTextField(
                          length: 6, // Set the length of OTP to 6 digits
                          controller: _codeController,
                          keyboardType: TextInputType.number,
                          onChanged: (pin) {
                            // Handle OTP input changes here
                          },
                          onCompleted: (pin) {
                            // Handle OTP validation or submission here
                          },
                          appContext: context,
                          pinTheme: PinTheme(
                            shape: PinCodeFieldShape.underline,
                            fieldHeight: 30,
                            fieldWidth: 20,
                            activeColor:
                            AppColors.color_black.withOpacity(0.40),
                            inactiveColor:
                            AppColors.color_black.withOpacity(0.40),
                            selectedColor:
                            AppColors.color_black.withOpacity(0.40),
                          ),
                          autoFocus: true,
                          textInputAction: TextInputAction.done,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Row(
                      children: [
                        Text(
                          Strings.havenot,
                          style: AppStyles.blackNormalTextStyle,
                        ),
                        TextButton(
                          onPressed: () {
                            // Handle resend code button press
                          },
                          child: Text(
                            Strings.send_again,
                            style: GoogleFonts.poppins(
                              color: AppColors.color_black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                   child: GestureDetector(
                     onTap: () {
                        _showMoreOptionsBottomSheet();
                   },
                    child: Text(
                    Strings.more_options,
                    style: AppStyles.underlinedTextStyle
                  ),
                ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Container(
                    width: 130,
                    height: 58,
                    child: CustomButton(
                      text: Strings.continue_text,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => YourProfilePage() ));
                      },
                      textStyle: AppStyles.sixteenTextStyle,
                      backgroundColor: AppColors.dark_blue,
                      borderRadius: 11,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
