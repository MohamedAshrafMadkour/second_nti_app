import 'package:doctor_app/core/constant/app_images.dart';
import 'package:doctor_app/feature/find_doctor/presentation/view/widget/custom_find_doctor_arrow_back.dart';
import 'package:doctor_app/feature/find_doctor/presentation/view/widget/find_doctor_item_list.dart';
import 'package:doctor_app/feature/main/presentation/view/widget/search_text_field.dart';
import 'package:flutter/material.dart';

class FindDoctorViewBody extends StatelessWidget {
  const FindDoctorViewBody({super.key});

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
        const CustomArrowBackAppBar(title: 'Find Doctors'),
        const Positioned.fill(
          top: 70,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 34),
                SearchTextField(),
                SizedBox(height: 24),
                Expanded(child: FindDoctorItemList()),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
