import 'package:doctor_app/core/utils/app_router.dart';
import 'package:doctor_app/feature/splash/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DoctorApp());
}

class DoctorApp extends StatelessWidget {
  const DoctorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SplashView.routeName,
      onGenerateRoute: onGenerateRoute,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Rubik',
      ),
    );
  }
}
