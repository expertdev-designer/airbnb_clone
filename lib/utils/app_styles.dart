import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppStyles{

  static TextStyle semiBoldTextStyle = GoogleFonts.poppins(
    color: AppColors.color_black,
    fontSize: 20,
    fontWeight: FontWeight.w600,
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
  static TextStyle semiBoldBlueStyle = GoogleFonts.poppins(
    color: AppColors.dark_blue,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );
  static TextStyle normalBlueStyle = GoogleFonts.poppins(
    color: AppColors.dark_blue.withOpacity(0.50),
    fontSize: 18,
    fontWeight: FontWeight.normal,
  );
  static TextStyle semiBoldEightyStyle = GoogleFonts.poppins(
    color: AppColors.color_black.withOpacity(0.80),
    fontSize: 32,
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