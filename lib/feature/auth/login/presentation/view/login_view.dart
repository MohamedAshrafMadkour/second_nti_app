import 'package:doctor_app/feature/auth/login/presentation/view/widgets/login_view_body.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const routeName = 'login_view';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: LoginViewBody());
  }
}
