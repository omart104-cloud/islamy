import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamy/core/app_colors.dart';

class AppStyle{
  static TextStyle titleStyle= GoogleFonts.lora(
      color: AppColors.primary,
      fontSize: 25,
      fontWeight: FontWeight.bold);

  static TextStyle bodyStyle= GoogleFonts.lora(color: AppColors.primary,
      fontSize: 20,
      fontWeight: FontWeight.bold);
}