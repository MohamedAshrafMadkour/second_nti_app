import 'package:doctor_app/core/constant/app_colors.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:doctor_app/feature/main/presentation/view/widget/custom_arrow_back.dart';
import 'package:flutter/material.dart';

class CustomArrowBackAppBar extends StatelessWidget {
  const CustomArrowBackAppBar({required this.title, super.key});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 50,
      left: 10,
      child: Row(
        children: [
          const CustomArrowBack(),
          const SizedBox(width: 20),
          Text(
            title,
            style: AppStyles.textRegular18(
              context,
            ).copyWith(color: AppColors.brownColor22),
          ),
        ],
      ),
    );
  }
}
