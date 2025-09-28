import 'package:doctor_app/feature/main/presentation/view/widget/custom_home_featured_item.dart';
import 'package:flutter/material.dart';

class CustomHomeFeatureItemList extends StatelessWidget {
  const CustomHomeFeatureItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .205,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(width: 15),
        itemBuilder: (context, index) => const CustomHomeFeatureItem(),
        itemCount: 10,
      ),
    );
  }
}
