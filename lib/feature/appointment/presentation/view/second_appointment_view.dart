import 'package:doctor_app/feature/appointment/presentation/view/widget/second_appointment_view_body.dart';
import 'package:flutter/material.dart';

class SecondAppointmentView extends StatelessWidget {
  const SecondAppointmentView({super.key});
  static const routeName = 'second_appointment_view';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SecondAppointmentViewBody());
  }
}
