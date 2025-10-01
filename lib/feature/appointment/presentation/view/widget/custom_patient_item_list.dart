import 'package:doctor_app/feature/appointment/presentation/view/widget/custom_add_item.dart';
import 'package:doctor_app/feature/appointment/presentation/view/widget/custom_patient_item.dart';
import 'package:flutter/material.dart';

class CustomPatientItemList extends StatelessWidget {
  const CustomPatientItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .17,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return index == 0
              ? const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: CustomAddItem(),
                )
              : const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: CustomPatientItem(),
                );
        },
      ),
    );
  }
}
