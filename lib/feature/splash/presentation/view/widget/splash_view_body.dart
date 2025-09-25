import 'package:doctor_app/core/constant/app_images.dart';
import 'package:doctor_app/feature/splash/presentation/view/widget/custom_splash_logo.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> logoScale;
  late Animation<Offset> logoSlide;
  late Animation<double> textFade;

  @override
  void initState() {
    super.initState();

    customAnimationMethod();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          width: double.infinity,
          height: double.infinity,
          AppImages.imagesSplashBackground,
          fit: BoxFit.cover,
        ),
        CustomSplashLogo(
          logoSlide: logoSlide,
          logoScale: logoScale,
          textFade: textFade,
        ),
      ],
    );
  }

  void customAnimationMethod() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    logoScale = Tween<double>(
      begin: 0.6,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutBack));

    logoSlide = Tween<Offset>(
      begin: const Offset(0, 0.3),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    textFade = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.5, 1.0, curve: Curves.easeIn),
      ),
    );

    _controller.forward();
  }
}
