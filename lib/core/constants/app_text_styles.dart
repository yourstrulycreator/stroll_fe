import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_fonts.dart';

class AppTextStyles {
  // Headings
  static const TextStyle heading1 = TextStyle(
    fontFamily: AppFonts.proximaNova,
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );
  
  static const TextStyle heading2 = TextStyle(
    fontFamily: AppFonts.proximaNova,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  // Body Text
  static const TextStyle bodyLarge = TextStyle(
    fontFamily: AppFonts.proximaNova,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static const TextStyle bodyRegular = TextStyle(
    fontFamily: AppFonts.proximaNova,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.textPrimary,
  );

  // Special Text
  static const TextStyle quote = TextStyle(
    fontFamily: AppFonts.proximaNova,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.italic,
    color: AppColors.textSecondary,
  );

  // Meta Information
  static const TextStyle metaInfo = TextStyle(
    fontFamily: AppFonts.proximaNova,
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.textSecondary,
  );

  // Option Letter
  static const TextStyle optionLetter = TextStyle(
    fontFamily: AppFonts.proximaNova,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  // Bottom Text
  static const TextStyle instructionText = TextStyle(
    fontFamily: AppFonts.proximaNova,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );
} 