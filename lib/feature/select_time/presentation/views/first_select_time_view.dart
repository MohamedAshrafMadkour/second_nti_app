import 'package:doctor_app/feature/select_time/presentation/views/widget/first_select_view_body.dart';
import 'package:flutter/material.dart';

class FirstSelectTimeView extends StatelessWidget {
  const FirstSelectTimeView({super.key});
  static const routeName = 'select_time_view';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: FirstSelectTimeViewBody());
  }
}
