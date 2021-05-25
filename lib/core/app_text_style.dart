import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyle {
  // text branco
  static final TextStyle textWrite15 = TextStyle(
      color: AppColors.corTextWrite, fontSize: 15, fontWeight: FontWeight.w400);

  static final TextStyle textWrite20 = TextStyle(
      color: AppColors.corTextWrite, fontSize: 20, fontWeight: FontWeight.w400);

  static final TextStyle textBoldWrite15 = TextStyle(
      color: AppColors.corTextWrite, fontSize: 15, fontWeight: FontWeight.bold);

  static final TextStyle textBoldWrite20 = TextStyle(
      color: AppColors.corTextWrite, fontSize: 20, fontWeight: FontWeight.bold);

  // text pink
  static final TextStyle textPink15 = TextStyle(
      color: AppColors.corTextPink200,
      fontSize: 15,
      fontWeight: FontWeight.w100);

  static final TextStyle textPinkBold15 = TextStyle(
      color: AppColors.corTextPink200,
      fontSize: 15,
      fontWeight: FontWeight.w500);

  static final TextStyle textPink20 = TextStyle(
      color: AppColors.corTextPink200,
      fontSize: 20,
      fontWeight: FontWeight.w100);

  static final TextStyle textPinkBold20 = TextStyle(
      color: AppColors.corTextPink200,
      fontSize: 20,
      fontWeight: FontWeight.w600);

  // text black
  static final TextStyle textBlack15 =
      TextStyle(color: AppColors.corTextBlack, fontSize: 18);

  static final TextStyle textBlack20 = TextStyle(
      color: AppColors.corTextBlack, fontSize: 20, fontWeight: FontWeight.w400);

  static final TextStyle textBoldBlack5 = TextStyle(
      color: AppColors.corTextBlack, fontSize: 15, fontWeight: FontWeight.bold);

  static final TextStyle textBoldBlac20 = TextStyle(
      color: AppColors.corTextBlack, fontSize: 20, fontWeight: FontWeight.bold);
}
