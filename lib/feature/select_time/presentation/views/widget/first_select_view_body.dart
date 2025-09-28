import 'package:doctor_app/core/constant/app_colors.dart';
import 'package:doctor_app/core/constant/app_images.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:doctor_app/core/widget/custom_button.dart';
import 'package:doctor_app/feature/find_doctor/presentation/view/widget/custom_find_doctor_arrow_back.dart';
import 'package:doctor_app/feature/select_time/presentation/views/second_select_time_view.dart';
import 'package:doctor_app/feature/select_time/presentation/views/widget/custom_select_time_item.dart';
import 'package:doctor_app/feature/select_time/presentation/views/widget/data_time_list.dart';
import 'package:flutter/material.dart';

class FirstSelectTimeViewBody extends StatelessWidget {
  const FirstSelectTimeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            AppImages.imagesSplashBackground,
            fit: BoxFit.cover,
          ),
        ),
        const CustomArrowBackAppBar(title: 'Select Time'),
        Positioned(
          top: 70,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              children: [
                const SizedBox(height: 34),
                const Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: CustomSelectTimeItem(),
                ),
                const SizedBox(height: 24),
                const DateTimeList(),
                const SizedBox(height: 20),
                Text(
                  'Today, 23 Feb',
                  style: AppStyles.textMedium16(
                    context,
                  ).copyWith(color: AppColors.brownColor22),
                ),
                const SizedBox(height: 20),
                Text(
                  'No slots available',
                  textAlign: TextAlign.center,
                  style: AppStyles.textRegular14(
                    context,
                  ).copyWith(color: AppColors.brownColor67),
                ),
                const SizedBox(height: 20),
                CustomButton(
                  title: 'Next availability on wed, 24 Feb',
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      SecondSelectTimeView.routeName,
                    );
                  },
                  height: 60,
                ),
                const SizedBox(height: 14),
                Text(
                  'OR',
                  style: AppStyles.textRegular14(
                    context,
                  ).copyWith(color: AppColors.brownColor67),
                ),
                const SizedBox(height: 14),
                CustomSecondButton(
                  title: 'Contact Clinic',
                  onPressed: () {},
                  height: 60,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
