import 'package:doctor_app/core/constant/app_colors.dart';
import 'package:doctor_app/core/constant/app_images.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:doctor_app/feature/main/presentation/view/widget/custom_fav_and_rate.dart';
import 'package:flutter/material.dart';

class CustomHomeFeatureItem extends StatelessWidget {
  const CustomHomeFeatureItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        shadows: const [
          BoxShadow(
            color: Color(0x0F000000),
            blurRadius: 20,
            offset: Offset(0, -1),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
        child: Column(
          children: [
            const CustomFavAndRate(),
            const SizedBox(height: 8),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.1,
              child: Image.asset(AppImages.imagesTest5, fit: BoxFit.cover),
            ),
            const SizedBox(height: 10),

            Text(
              'Dr. Crick',
              style: AppStyles.textMedium12(
                context,
              ).copyWith(color: AppColors.brownColor33),
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '\$ ',
                    style: AppStyles.textMedium9(
                      context,
                    ).copyWith(color: AppColors.greenColor0E),
                  ),
                  TextSpan(
                    text: '25.00/ hours',
                    style: AppStyles.textMedium9(
                      context,
                    ).copyWith(color: AppColors.brownColor67),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
