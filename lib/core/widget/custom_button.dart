import 'package:doctor_app/core/constant/app_colors.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.title,
    super.key,
    this.onPressed,
    this.width,
    this.height,
    this.borderRadius,
  });
  final String title;
  final void Function()? onPressed;
  final double? width;
  final double? height;
  final double? borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? MediaQuery.sizeOf(context).width * 0.8,
      height: height ?? 70,
      child: TextButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.greenColor0E,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 10)),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: AppStyles.textMedium18(
            context,
          ).copyWith(color: AppColors.whiteColor),
        ),
      ),
    );
  }
}

class CustomSecondButton extends StatelessWidget {
  const CustomSecondButton({
    required this.title,
    super.key,
    this.onPressed,
    this.width,
    this.height,
    this.borderRadius,
  });
  final String title;
  final void Function()? onPressed;
  final double? width;
  final double? height;
  final double? borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? MediaQuery.sizeOf(context).width * 0.8,
      height: height ?? 70,
      child: TextButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: AppColors.greenColor0E),
            borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 10)),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: AppStyles.textMedium18(
            context,
          ).copyWith(color: AppColors.greenColor0E),
        ),
      ),
    );
  }
}
