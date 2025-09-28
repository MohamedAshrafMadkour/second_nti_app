import 'package:doctor_app/core/constant/app_colors.dart';
import 'package:doctor_app/core/constant/app_icons.dart';
import 'package:doctor_app/core/constant/app_images.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:doctor_app/feature/main/presentation/view/widget/custom_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomCategoryItem extends StatelessWidget {
  const CustomCategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        shadows: const [BoxShadow(color: Color(0x14000000), blurRadius: 20)],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height * .08,
              child: Image.asset(AppImages.imagesTest13, fit: BoxFit.cover),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Dr. Shruti Kedia',
                        style: AppStyles.textMedium18(
                          context,
                        ).copyWith(color: AppColors.brownColor33),
                      ),
                      SvgPicture.asset(AppIcons.iconsUnFavIcon, height: 18),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Specialist Cardiologist ',
                    style: AppStyles.textLight14(
                      context,
                    ).copyWith(color: AppColors.brownColor67),
                  ),
                  const SizedBox(height: 13),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CustomRating(),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '2.4 ',
                              style: AppStyles.textMedium16(
                                context,
                              ).copyWith(color: AppColors.brownColor33),
                            ),

                            TextSpan(
                              text: '(',
                              style: AppStyles.textRegular16(
                                context,
                              ).copyWith(color: AppColors.brownColor67),
                            ),
                            TextSpan(
                              text: '2475 views',
                              style: AppStyles.textRegular12(
                                context,
                              ).copyWith(color: AppColors.brownColor67),
                            ),
                            TextSpan(
                              text: ')',
                              style: AppStyles.textRegular16(
                                context,
                              ).copyWith(color: AppColors.brownColor67),
                            ),
                          ],
                        ),
                      ),
                    ],
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
