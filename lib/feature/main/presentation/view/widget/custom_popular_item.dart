import 'package:doctor_app/core/constant/app_colors.dart';
import 'package:doctor_app/core/constant/app_images.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:doctor_app/feature/main/presentation/view/widget/custom_rating.dart';
import 'package:doctor_app/feature/popular_doctor/presentation/view/popular_doctor_view.dart';
import 'package:flutter/material.dart';

class CustomPopularItem extends StatelessWidget {
  const CustomPopularItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, PopularDoctorView.routeName);
      },
      child: Container(
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          shadows: const [BoxShadow(color: Color(0x14000000), blurRadius: 40)],
        ),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.2,
              child: Image.asset(AppImages.imagesTest1, fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
              child: Column(
                children: [
                  Text(
                    'Dr. Fillerup Grab',
                    style: AppStyles.textMedium18(
                      context,
                    ).copyWith(color: AppColors.brownColor33),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    'Medicine Specialist',
                    style: AppStyles.textLight12(
                      context,
                    ).copyWith(color: AppColors.brownColorCC),
                  ),
                  const SizedBox(height: 6),
                  const CustomRating(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
