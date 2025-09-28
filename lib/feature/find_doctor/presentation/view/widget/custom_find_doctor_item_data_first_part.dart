import 'package:doctor_app/core/constant/app_colors.dart';
import 'package:doctor_app/core/constant/app_icons.dart';
import 'package:doctor_app/core/constant/app_images.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:doctor_app/feature/find_doctor/presentation/view/widget/custom_patient_stories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomFindDoctorItemDataFirstPart extends StatelessWidget {
  const CustomFindDoctorItemDataFirstPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(AppImages.imagesTest11, fit: BoxFit.cover),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Dr. John Doe, M.D.',
                      style: AppStyles.textMedium18(
                        context,
                      ).copyWith(color: AppColors.brownColor33),
                    ),
                    SizedBox(width: MediaQuery.sizeOf(context).width * 0.11),
                    SvgPicture.asset(AppIcons.iconsUnFavIcon, height: 18),
                  ],
                ),

                const SizedBox(height: 1),
                Text(
                  'Tooths Dentist',
                  style: AppStyles.textRegular13(
                    context,
                  ).copyWith(color: AppColors.greenColor0E),
                ),
                const SizedBox(height: 4),
                Text(
                  '7 Years experience ',
                  style: AppStyles.textRegular12(
                    context,
                  ).copyWith(color: AppColors.brownColor67),
                ),
                const SizedBox(height: 10),
                const CustomPatientStories(),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
