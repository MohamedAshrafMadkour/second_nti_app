import 'package:doctor_app/feature/appointment/presentation/view/widget/first_appointment_view_body.dart';
import 'package:doctor_app/feature/main/presentation/view/widget/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class AppointmentView extends StatefulWidget {
  const AppointmentView({super.key});
  static const routeName = 'appointment_view';

  @override
  State<AppointmentView> createState() => _AppointmentViewState();
}

class _AppointmentViewState extends State<AppointmentView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const AppointmentViewBody(),
      bottomNavigationBar: BottomNavBar(
        onItemTapped: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
    );
  }
}
