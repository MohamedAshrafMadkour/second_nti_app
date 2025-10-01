import 'package:doctor_app/core/constant/app_colors.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomAddItem extends StatelessWidget {
  const CustomAddItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: ShapeDecoration(
            color: const Color(0x330EBE7F),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 15, left: 34, right: 37),
            child: Column(
              children: [
                Text(
                  '+',
                  style: AppStyles.textLight50(
                    context,
                  ).copyWith(color: AppColors.greenColor0E),
                ),
                const SizedBox(height: 16),
                Text(
                  'Add',
                  textAlign: TextAlign.center,
                  style: AppStyles.textRegular18(
                    context,
                  ).copyWith(color: AppColors.greenColor0E),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 25),
      ],
    );
  }
}
