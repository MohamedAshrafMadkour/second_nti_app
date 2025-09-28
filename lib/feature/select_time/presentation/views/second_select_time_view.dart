import 'package:doctor_app/feature/select_time/presentation/views/widget/second_select_time_view_body.dart';
import 'package:flutter/material.dart';

class SecondSelectTimeView extends StatelessWidget {
  const SecondSelectTimeView({super.key});
  static const routeName = 'second_select_time_view';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SecondSelectTimeViewBody());
  }
}
