import 'package:doctor_app/core/constant/app_colors.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:doctor_app/core/widget/custom_button.dart';
import 'package:doctor_app/feature/select_time/presentation/views/first_select_time_view.dart';
import 'package:flutter/material.dart';

class CustomFindDoctorItemDataSecondPart extends StatelessWidget {
  const CustomFindDoctorItemDataSecondPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Next Available ',
              style: AppStyles.textRegular13(
                context,
              ).copyWith(color: AppColors.greenColor0E),
            ),
            const SizedBox(height: 5),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '10:00',
                    style: AppStyles.textRegular12(
                      context,
                    ).copyWith(color: AppColors.brownColor33),
                  ),
                  TextSpan(
                    text: ' AM tomorrow',
                    style: AppStyles.textRegular12(
                      context,
                    ).copyWith(color: AppColors.brownColor67),
                  ),
                ],
              ),
            ),
          ],
        ),
        CustomButton(
          title: 'Book Now',
          onPressed: () {
            Navigator.pushNamed(context, FirstSelectTimeView.routeName);
          },
          height: 40,
          width: MediaQuery.sizeOf(context).width * 0.35,
          borderRadius: 6,
        ),
      ],
    );
  }
}
