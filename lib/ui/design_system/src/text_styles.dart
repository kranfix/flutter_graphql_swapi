import 'colors.dart';
import 'package:flutter/painting.dart';

class TextStyles {
  const TextStyles._();

  static TextStyle h2Default = TextStyle(
    color: AppColors.black,
    fontSize: 17,
    fontWeight: FontWeight.bold,
  );

  static TextStyle h2LowEmphasis = TextStyle(
    color: AppColors.light,
    fontSize: 17,
    fontWeight: FontWeight.bold,
  );

  static TextStyle h2HighEmphasis = TextStyle(
    color: AppColors.emphasis,
    fontSize: 17,
    fontWeight: FontWeight.bold,
  );

  static TextStyle p1Default = TextStyle(
    color: AppColors.black,
    fontSize: 14,
  );

  static TextStyle p1LowEmphasis = TextStyle(
    color: AppColors.light,
    fontSize: 14,
  );
}
