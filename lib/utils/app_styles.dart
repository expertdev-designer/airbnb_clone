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

}