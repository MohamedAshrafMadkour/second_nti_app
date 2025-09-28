import 'package:doctor_app/feature/find_doctor/presentation/view/widget/find_doctor_view_body.dart';
import 'package:flutter/material.dart';

class FindDoctorView extends StatelessWidget {
  const FindDoctorView({super.key});
  static const routeName = 'find_doctor_view';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: FindDoctorViewBody());
  }
}
