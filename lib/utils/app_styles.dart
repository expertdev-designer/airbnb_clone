import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppStyles{

  static TextStyle semiBoldTextStyle = GoogleFonts.poppins(
    color: AppColors.color_black,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  static TextStyle twentyTwoSemiBold= GoogleFonts.poppins(
    color: AppColors.grey_blue,
    fontSize: 22,
    fontWeight: FontWeight.w600,
  );
  static TextStyle lightBlacktwentyTwo= GoogleFonts.poppins(
    color: AppColors.light_black,
    fontSize: 22,
    fontWeight: FontWeight.w600,
  );

  static TextStyle lightBlackNormalTwentyTwo= GoogleFonts.poppins(
    color: AppColors.light_black,
    fontSize: 22,
    fontWeight: FontWeight.normal,
  );

  static TextStyle userNameTextStyle = GoogleFonts.poppins(
    color: AppColors.grey_blue,
    fontSize: 20,
    fontWeight: FontWeight.normal,
  );

  static TextStyle greyfourteenStyle = GoogleFonts.poppins(
    color: AppColors.grey,
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  static TextStyle greyTextStyle = GoogleFonts.poppins(
    color: AppColors.grey,
    fontSize: 15,
    fontWeight: FontWeight.normal,
  );
  static TextStyle lightBlackTextStyle = GoogleFonts.poppins(
    color: AppColors.light_black,
    fontSize: 15,
    fontWeight: FontWeight.normal,
  );
  static TextStyle blackNormalTextStyle = GoogleFonts.poppins(
    color: AppColors.color_black,
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  static TextStyle underlinedTextStyle = GoogleFonts.poppins(
    color: AppColors.color_black,
    fontSize: 14,
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.underline,
  );
  static TextStyle eightyBoldTextStyle = GoogleFonts.poppins(
    color: AppColors.color_black.withOpacity(0.80), // Adjust opacity here
    fontSize: 14,
    fontWeight: FontWeight.bold,
  );
  static TextStyle opacityNormalTextStyle = GoogleFonts.poppins(
    color: AppColors.color_black.withOpacity(0.66), // Adjust opacity here
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  static TextStyle normalSmallTextStyle = GoogleFonts.poppins(
    color: AppColors.color_black,
    fontSize: 12,
    fontWeight: FontWeight.normal,
  );
  static TextStyle normalSixteenTextStyle = GoogleFonts.poppins(
    color: AppColors.color_black,
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );

  static TextStyle opacityEightyStyle = GoogleFonts.poppins(
    color: AppColors.color_black.withOpacity(0.80),
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  static TextStyle sixteenTextStyle = GoogleFonts.poppins(
    color: AppColors.color_white,
    fontSize: 16,
    fontWeight: FontWeight.normal,
  );
  static TextStyle opacitySeventyStyle = GoogleFonts.poppins(
    color: AppColors.color_black.withOpacity(0.70),
    fontSize: 10,
    fontWeight: FontWeight.normal,
  );
  static TextStyle whiteNormalTextStyle = GoogleFonts.poppins(
    color: AppColors.color_white,
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );
  static TextStyle whiteSmallTextStyle = GoogleFonts.poppins(
    color: AppColors.color_white,
    fontSize: 10,
    fontWeight: FontWeight.normal,
  );

  static TextStyle continueTextStyle = GoogleFonts.poppins(
    color: AppColors.grey_blue,
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );
  static TextStyle listTextStyle = GoogleFonts.poppins(
    color: AppColors.grey_blue,
    fontSize: 12,
    fontWeight: FontWeight.normal,
  );
  static TextStyle thirteenGreyBlue = GoogleFonts.poppins(
    color: AppColors.grey_blue,
    fontSize: 13,
    fontWeight: FontWeight.normal,
  );
  static TextStyle semiBoldBlueStyle = GoogleFonts.poppins(
    color: AppColors.dark_blue,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
  static TextStyle normalBlueStyle = GoogleFonts.poppins(
    color: AppColors.grey_blue.withOpacity(0.80),
    fontSize: 18,
    fontWeight: FontWeight.normal,
  );
  static TextStyle eighteenSemiBold = GoogleFonts.poppins(
    color: AppColors.grey_blue,
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static TextStyle semiBoldEightyStyle = GoogleFonts.poppins(
    color: AppColors.color_black.withOpacity(0.80),
    fontSize: 32,
    fontWeight: FontWeight.w600,
  );
  static TextStyle lightBlackSemiBold = GoogleFonts.poppins(
    color: AppColors.light_black,
    fontSize: 22,
    fontWeight: FontWeight.w600,
  );

  static BoxDecoration searchBoxDecoration = BoxDecoration(
    color: AppColors.color_white,
    borderRadius: BorderRadius.circular(30),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 1,
        blurRadius: 4,
        offset: Offset(0, 3),
      ),
    ],
  );
  static BoxDecoration containerBoxDecoration = BoxDecoration(
    color: AppColors.color_white,
    borderRadius: BorderRadius.circular(13),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 1,
        blurRadius: 4,
        offset: const Offset(0, 3),
      ),
    ],
  );

  static BoxDecoration pinkGradientBoxDecoration = BoxDecoration(
    gradient: AppColors.pinkGradient,
    borderRadius: BorderRadius.circular(10),
  );

  static BoxDecoration buttonBoxDecoration = BoxDecoration(
    color: AppColors.color_white,
    borderRadius: BorderRadius.circular(8),
    border: Border.all(color: AppColors.light_black, width: 1),
  );

  static BoxDecoration taxBoxDecoration = BoxDecoration(
    color: AppColors.color_white,
    borderRadius: BorderRadius.circular(20),
    border: Border.all(color: AppColors.color_black.withOpacity(0.20), width: 1),
  );

  static BoxDecoration pinBoxDecoration = BoxDecoration(
    color: AppColors.color_white,
    borderRadius: BorderRadius.circular(10),
    border: Border.all(color: AppColors.color_black, width: 1),
  );
}