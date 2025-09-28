import 'package:doctor_app/feature/main/presentation/view/main_view.dart';
import 'package:doctor_app/feature/main/presentation/view/widget/custom_live_details.dart';
import 'package:doctor_app/feature/on_boarding/presentation/view/on_boarding_view.dart';
import 'package:doctor_app/feature/find_doctor/presentation/view/find_doctor_view.dart';
import 'package:doctor_app/feature/select_time/presentation/views/second_select_time_view.dart';
import 'package:doctor_app/feature/select_time/presentation/views/first_select_time_view.dart';
import 'package:doctor_app/feature/splash/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());
    case CustomLiveDetails.routeName:
      return MaterialPageRoute(builder: (context) => const CustomLiveDetails());
    case MainView.routeName:
      return MaterialPageRoute(builder: (context) => const MainView());
    case FindDoctorView.routeName:
      return MaterialPageRoute(builder: (context) => const FindDoctorView());
    case FirstSelectTimeView.routeName:
      return MaterialPageRoute(
        builder: (context) => const FirstSelectTimeView(),
      );
    case SecondSelectTimeView.routeName:
      return MaterialPageRoute(
        builder: (context) => const SecondSelectTimeView(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) =>
            const Scaffold(body: Center(child: Text('error page'))),
      );
  }
}
