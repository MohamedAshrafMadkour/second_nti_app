import 'package:doctor_app/core/constant/app_colors.dart';
import 'package:doctor_app/core/constant/app_images.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:doctor_app/feature/main/presentation/view/widget/custom_rating.dart';
import 'package:flutter/material.dart';

class CustomPopularDoctorFirstSectionItem extends StatelessWidget {
  const CustomPopularDoctorFirstSectionItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        shadows: const [BoxShadow(color: Color(0x14000000), blurRadius: 40)],
      ),
      child: Column(
        children: [
          SizedBox(
            child: Image.asset(AppImages.imagesTest12, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Column(
              children: [
                Text(
                  'Dr. Fillerup Grab',
                  style: AppStyles.textMedium14(
                    context,
                  ).copyWith(color: AppColors.blackColor00),
                ),
                const SizedBox(height: 2),
                Text(
                  'Medicine Specialist',
                  style: AppStyles.textLight10(
                    context,
                  ).copyWith(color: AppColors.brownColor67),
                ),
                const SizedBox(height: 6),
                const CustomRating(rating: 12),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
