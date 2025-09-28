import 'package:doctor_app/feature/find_doctor/presentation/view/widget/find_doctor_item.dart';
import 'package:flutter/material.dart';

class FindDoctorItemList extends StatelessWidget {
  const FindDoctorItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      itemCount: 10,
      separatorBuilder: (context, index) => const SizedBox(height: 10),
      itemBuilder: (context, index) => const CustomFindDoctorItem(),
    );
  }
}
