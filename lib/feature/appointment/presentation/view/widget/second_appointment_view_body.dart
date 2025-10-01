import 'package:doctor_app/core/constant/app_colors.dart';
import 'package:doctor_app/core/helper/show_confirm_dialog.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:doctor_app/core/widget/custom_back_ground.dart';
import 'package:doctor_app/core/widget/custom_button.dart';
import 'package:doctor_app/feature/appointment/presentation/view/widget/custom_calender.dart';
import 'package:doctor_app/feature/appointment/presentation/view/widget/custom_hour_list.dart';
import 'package:doctor_app/feature/appointment/presentation/view/widget/custom_minit_list.dart';
import 'package:doctor_app/feature/find_doctor/presentation/view/widget/custom_find_doctor_arrow_back.dart';
import 'package:flutter/material.dart';

class SecondAppointmentViewBody extends StatelessWidget {
  const SecondAppointmentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CustomBackGround(),
        const CustomArrowBackAppBar(title: 'Appointment'),
        Positioned.fill(
          top: 70,
          child: Column(
            children: [
              const SizedBox(height: 34),
              const CustomCalender(),
              const SizedBox(height: 28),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      decoration: const ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(45),
                            topRight: Radius.circular(45),
                          ),
                        ),
                        shadows: [
                          BoxShadow(color: Color(0x0F000000), blurRadius: 25),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 35,
                          left: 20,
                          right: 20,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Available Time',
                              style: AppStyles.textMedium18(
                                context,
                              ).copyWith(color: AppColors.brownColor33),
                            ),
                            const SizedBox(height: 20),
                            const CustomHourList(),
                            const SizedBox(height: 38),
                            Text(
                              'Reminder Me Before',
                              style: AppStyles.textMedium18(
                                context,
                              ).copyWith(color: AppColors.brownColor33),
                            ),
                            const SizedBox(height: 27),
                            const CustomMinutList(),
                            const SizedBox(height: 20),
                            Center(
                              child: CustomButton(
                                title: 'Confirm',
                                onPressed: () {
                                  showConfirmationDialog(context);
                                },
                                height: 60,
                              ),
                            ),
                            const SizedBox(height: 50),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
