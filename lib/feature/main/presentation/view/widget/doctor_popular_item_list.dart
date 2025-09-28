import 'package:doctor_app/feature/main/presentation/view/widget/custom_popular_item.dart';
import 'package:flutter/material.dart';

class DoctorPopularItemList extends StatelessWidget {
  const DoctorPopularItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.33,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(width: 15),
        itemBuilder: (context, index) => const CustomPopularItem(),
        itemCount: 10,
      ),
    );
  }
}
