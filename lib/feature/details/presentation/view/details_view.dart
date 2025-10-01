import 'package:doctor_app/feature/details/presentation/view/widget/details_view_body.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});
  static const routeName = 'details_view';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: DetailsViewBody());
  }
}
