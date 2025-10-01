import 'package:doctor_app/feature/auth/register/presentation/view/widget/register_view_body.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});
  static const routeName = 'register_view';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: RegisterViewBody());
  }
}
