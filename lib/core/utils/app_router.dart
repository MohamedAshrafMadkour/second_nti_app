import 'package:doctor_app/feature/main/presentation/view/main_view.dart';
import 'package:doctor_app/feature/on_boarding/presentation/view/on_boarding_view.dart';
import 'package:doctor_app/feature/splash/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());
    case MainView.routeName:
      return MaterialPageRoute(builder: (context) => const MainView());
    default:
      return MaterialPageRoute(
        builder: (context) =>
            const Scaffold(body: Center(child: Text('error page'))),
      );
  }
}
