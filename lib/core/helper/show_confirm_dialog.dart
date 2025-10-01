import 'package:doctor_app/core/constant/app_colors.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:doctor_app/core/widget/custom_button.dart';
import 'package:flutter/material.dart';

void showConfirmationDialog(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    barrierColor: const Color.fromRGBO(0, 0, 0, .8),
    builder: (context) {
      return Dialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 20,
                ),
                height: MediaQuery.sizeOf(context).height * 0.15,
                decoration: const ShapeDecoration(
                  color: Color(0xFFE7F8F2),
                  shape: OvalBorder(),
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.thumb_up,
                      size: 80,
                      color: AppColors.greenColor0E,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),

              Text(
                'Thank You !',
                style: AppStyles.textMedium38(
                  context,
                ).copyWith(color: AppColors.brownColor33),
              ),
              const SizedBox(height: 15),

              Text(
                'You booked an appointment with Dr. Pediatrician Purpison '
                'on February 21, at 02:00 PM',
                textAlign: TextAlign.center,
                style: AppStyles.textRegular14(
                  context,
                ).copyWith(color: AppColors.brownColor67),
              ),
              const SizedBox(height: 25),

              CustomButton(
                height: 60,
                title: 'Done',
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Edit your appointment',
                  style: AppStyles.textRegular14(
                    context,
                  ).copyWith(color: AppColors.brownColor67),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
