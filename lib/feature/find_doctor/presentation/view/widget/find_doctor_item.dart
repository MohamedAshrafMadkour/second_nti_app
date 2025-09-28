import 'package:doctor_app/feature/find_doctor/presentation/view/widget/custom_find_doctor_item_data_first_part.dart';
import 'package:doctor_app/feature/find_doctor/presentation/view/widget/custom_find_doctor_item_data_second_part.dart';
import 'package:flutter/material.dart';

class CustomFindDoctorItem extends StatelessWidget {
  const CustomFindDoctorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        shadows: const [BoxShadow(color: Color(0x14000000), blurRadius: 20)],
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
        child: Column(
          children: [
            CustomFindDoctorItemDataFirstPart(),
            SizedBox(height: 17),
            CustomFindDoctorItemDataSecondPart(),
          ],
        ),
      ),
    );
  }
}
