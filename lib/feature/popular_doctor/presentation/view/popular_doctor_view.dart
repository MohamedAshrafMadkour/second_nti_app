import 'package:doctor_app/feature/popular_doctor/presentation/view/widget/popular_doctor_view_body.dart';
import 'package:flutter/material.dart';

class PopularDoctorView extends StatelessWidget {
  const PopularDoctorView({super.key});
  static const routeName = 'popular_doctor_view';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: PopularDoctorViewBody());
  }
}
