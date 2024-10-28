import 'package:flutter/material.dart';
import 'app_colors.dart';

abstract class  AppTextStyle{

  static TextStyle mainTitle = const TextStyle(
    fontSize: 64,
    color: AppColors.textTitle,
    height: 1
  );
  static TextStyle textTitle = const TextStyle(
    fontSize: 24,
    color: AppColors.textTitle,
  );
  static TextStyle body = const TextStyle(
    fontSize: 14,
    color: AppColors.textBody,
  );
  static TextStyle subtitle = const TextStyle(
    fontSize: 12,
    color: AppColors.subTitle,
  );
  static TextStyle contrastBody = const TextStyle(
    fontSize: 14,
    color: AppColors.contrastPageColor,
  );

}