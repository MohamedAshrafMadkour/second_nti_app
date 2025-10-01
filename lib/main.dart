import 'package:doctor_app/core/helper/get_it_method.dart';
import 'package:doctor_app/core/task/presentation/view/task_view.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  getItSetup();
  runApp(const DoctorApp());
}

class DoctorApp extends StatelessWidget {
  const DoctorApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   initialRoute: SplashView.routeName,
    //   onGenerateRoute: onGenerateRoute,
    //   debugShowCheckedModeBanner: false,
    //   theme: ThemeData(
    //     scaffoldBackgroundColor: Colors.white,
    //     fontFamily: 'Rubik',
    //   ),
    // );
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TaskView(),
    );
  }
}
