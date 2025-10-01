import 'package:doctor_app/core/constant/app_colors.dart';
import 'package:doctor_app/core/constant/app_icons.dart';
import 'package:doctor_app/core/constant/app_images.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:doctor_app/feature/details/presentation/view/widget/custom_price_text.dart';
import 'package:doctor_app/feature/main/presentation/view/widget/custom_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppointmentItem extends StatelessWidget {
  const CustomAppointmentItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.13,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        shadows: const [BoxShadow(color: Color(0x14000000), blurRadius: 20)],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 18, right: 9, top: 18, bottom: 18),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(AppImages.imagesTest13, fit: BoxFit.cover),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Dr. Pediatrician',
                        style: AppStyles.textMedium18(
                          context,
                        ).copyWith(color: AppColors.brownColor33),
                      ),

                      SvgPicture.asset(AppIcons.iconsUnFavIcon, height: 18),
                    ],
                  ),

                  const SizedBox(height: 1),
                  Text(
                    'Specialist Cardiologist ',

                    style: AppStyles.textLight14(
                      context,
                    ).copyWith(color: AppColors.brownColor67),
                  ),
                  const SizedBox(height: 4),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [CustomRating(), CustomPriceText()],
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
