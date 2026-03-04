import 'package:flutter/material.dart';
import 'package:more_app/core/theme/app_colors.dart';

abstract class AppTextStyles {
  static const String _fontFamily = 'MemomentKkukkukk';

  // Title · 30/Auto
  static const TextStyle title = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 30,
    fontWeight: FontWeight.w700,
    color: AppColors.black,
  );

  // Head-1 · 24/Auto
  static const TextStyle head1 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 24,
    fontWeight: FontWeight.w700,
    color: AppColors.black,
  );

  // Head-2 · 20/Auto
  static const TextStyle head2 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );

  // Body-1 · 14/22
  static const TextStyle body1 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14,
    height: 22 / 14,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );

  // Caption · 13/17
  static const TextStyle caption = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 13,
    height: 17 / 13,
    fontWeight: FontWeight.w400,
    color: AppColors.gray2,
  );

  // Caption 2 · 11/17
  static const TextStyle caption2 = TextStyle(
    fontFamily: _fontFamily,
    fontSize: 11,
    height: 17 / 11,
    fontWeight: FontWeight.w400,
    color: AppColors.gray2,
  );
}
