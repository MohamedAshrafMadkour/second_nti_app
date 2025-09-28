import 'package:doctor_app/feature/find_doctor/presentation/view/find_doctor_view.dart';
import 'package:doctor_app/feature/main/data/illness_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IllnessItem extends StatelessWidget {
  const IllnessItem({required this.illnessItemModel, super.key});
  final IllnessItemModel illnessItemModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, FindDoctorView.routeName);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: illnessItemModel.color,
          ),
          boxShadow: const [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 4,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 26),
          child: SvgPicture.asset(illnessItemModel.image),
        ),
      ),
    );
  }
}
