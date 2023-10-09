import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../common_widgets/country_code_input.dart';
import '../common_widgets/buttons/custom_button.dart';
import '../common_widgets/buttons/custom_button_with_image.dart';
import '../home/home_screen.dart';
import '../utils/Images.dart';
import '../utils/app_colors.dart';
import '../utils/app_strings.dart';
import '../utils/app_styles.dart';
import 'cnfrm_number.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
        child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align children to the left
          children: [
            const SizedBox(height: 20),
            SvgPicture.asset(
              Images.cross,
              width: 16,
              height: 16,
            ),
            const SizedBox(height: 20),
            Text(
              Strings.login_or,
              style: AppStyles.semiBoldTextStyle,
            ),
            const SizedBox(height: 20),
            Text(
              Strings.mobile,
              style: AppStyles.opacityNormalTextStyle,
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: CountryCodeInput(
                initialSelection: '+91',
                onChanged: (CountryCode? countryCode) {
                  // Handle country code change
                },
                controller: phoneNumberController,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              Strings.cnfrm_number,
              style: AppStyles.normalSmallTextStyle,
            ),
            const SizedBox(height: 20),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 292,
                    height: 47,
                    child: CustomButton(
                      text: Strings.continue_text,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ConfirmYourNumberPage() ));
                      },
                      textStyle: AppStyles.whiteSmallTextStyle,
                      backgroundColor: AppColors.dark_blue,
                      borderRadius: 30,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: AppColors.color_black.withOpacity(0.10),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          Strings.or,
                          style: AppStyles.normalSmallTextStyle,
                        ),
                      ),
                       Expanded(
                        child: Divider(
                          color: AppColors.color_black.withOpacity(0.10),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Container(
                    width: 328,
                    height: 47,
                    child: CustomButtonWithImage(
                      text: Strings.continue_with_email,
                      onPressed: () {},
                      textStyle: AppStyles.continueTextStyle,
                      backgroundColor: AppColors.color_white,
                      borderRadius: 30,
                      svgImagePath: Images.mail,
                      imageWidth: 24,  // Specify the width of the image
                      imageHeight: 18,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: 328,
                    height: 47,
                    child: CustomButtonWithImage(
                      text: Strings.facebook,
                      onPressed: () {},
                      textStyle: AppStyles.continueTextStyle,
                      backgroundColor: AppColors.color_white,
                      borderRadius: 30,
                      svgImagePath: Images.facebook,
                      imageWidth: 30,  // Specify the width of the image
                      imageHeight: 30,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: 328,
                    height: 47,
                    child: CustomButtonWithImage(
                      text: Strings.google,
                      onPressed: () {},
                      textStyle: AppStyles.continueTextStyle,
                      backgroundColor: AppColors.color_white,
                      borderRadius: 30,
                      svgImagePath: Images.google,
                      imageWidth: 30,  // Specify the width of the image
                      imageHeight: 30,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: 328,
                    height: 47,
                    child: CustomButtonWithImage(
                      text: Strings.apple,
                      onPressed: () {},
                      textStyle: AppStyles.continueTextStyle,
                      backgroundColor: AppColors.color_white,
                      borderRadius: 30,
                      svgImagePath: Images.apple,
                      imageWidth: 30,  // Specify the width of the image
                      imageHeight: 28,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
        ),
    );
  }
}

