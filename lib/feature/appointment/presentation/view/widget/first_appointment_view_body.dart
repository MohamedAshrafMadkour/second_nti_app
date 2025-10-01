import 'package:doctor_app/core/constant/app_colors.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:doctor_app/core/widget/custom_back_ground.dart';
import 'package:doctor_app/core/widget/custom_button.dart';
import 'package:doctor_app/core/widget/custom_text_field.dart';
import 'package:doctor_app/feature/appointment/presentation/view/second_appointment_view.dart';
import 'package:doctor_app/feature/appointment/presentation/view/widget/custom_appointment_item.dart';
import 'package:doctor_app/feature/appointment/presentation/view/widget/custom_patient_item_list.dart';
import 'package:doctor_app/feature/find_doctor/presentation/view/widget/custom_find_doctor_arrow_back.dart';
import 'package:flutter/material.dart';

class AppointmentViewBody extends StatelessWidget {
  const AppointmentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CustomBackGround(),
        const CustomArrowBackAppBar(title: 'Appointment'),
        Positioned.fill(
          top: 70,
          left: 20,
          right: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 34),
              const CustomAppointmentItem(),
              const SizedBox(height: 30),
              Text(
                'Appointment For',
                style: AppStyles.textMedium16(
                  context,
                ).copyWith(color: AppColors.brownColor33),
              ),
              const SizedBox(height: 20),
              const CustomTextField(hintText: 'Patient Name'),
              const SizedBox(height: 20),
              const CustomTextField(hintText: 'Contact Number'),
              const SizedBox(height: 30),
              Text(
                'Who is this patient?',
                style: AppStyles.textMedium16(
                  context,
                ).copyWith(color: AppColors.brownColor33),
              ),
              const SizedBox(height: 20),
              const CustomPatientItemList(),
              const SizedBox(height: 18),
              Center(
                child: CustomButton(
                  height: 60,
                  title: 'Next',
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      SecondAppointmentView.routeName,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
