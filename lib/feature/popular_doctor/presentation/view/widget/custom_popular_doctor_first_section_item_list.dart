import 'package:doctor_app/feature/popular_doctor/presentation/view/widget/custom_popular_doctor_first_section_item.dart';
import 'package:flutter/material.dart';

class CustomPopularDoctorFirstSectionItemList extends StatelessWidget {
  const CustomPopularDoctorFirstSectionItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.23,
      child: ListView.separated(
        itemCount: 10,
        separatorBuilder: (context, index) => const SizedBox(width: 15),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>
            const CustomPopularDoctorFirstSectionItem(),
      ),
    );
  }
}
