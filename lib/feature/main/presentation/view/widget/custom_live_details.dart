import 'package:doctor_app/feature/main/presentation/view/widget/live_details_body.dart';
import 'package:flutter/material.dart';

class CustomLiveDetails extends StatelessWidget {
  const CustomLiveDetails({super.key});
  static const routeName = 'live_details';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: LiveDetailsBody());
  }
}
