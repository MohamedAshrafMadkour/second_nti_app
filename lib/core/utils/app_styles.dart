import 'package:flutter/material.dart';

class AppStyles {
  static TextStyle textBold25(BuildContext context) {
    return const TextStyle(
      color: Color(0xFF222222),
      fontSize: 25,
      fontWeight: FontWeight.w700,
      letterSpacing: -0.30,
    );
  }

  static TextStyle textMedium28(BuildContext context) {
    return const TextStyle(
      color: Color(0xFF333333),
      fontSize: 28,
      fontWeight: FontWeight.w500,
      letterSpacing: -0.30,
    );
  }

  static TextStyle textRegular14(BuildContext context) {
    return const TextStyle(
      color: Color(0xE5677294),
      fontSize: 14,

      fontWeight: FontWeight.w400,
      height: 1.66,
      letterSpacing: -0.30,
    );
  }

  static TextStyle textMedium18(BuildContext context) {
    return const TextStyle(fontSize: 18, fontWeight: FontWeight.w500);
  }
}
