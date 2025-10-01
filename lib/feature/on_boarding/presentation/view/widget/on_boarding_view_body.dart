import 'package:doctor_app/core/constant/app_colors.dart';
import 'package:doctor_app/core/constant/app_images.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:doctor_app/core/widget/custom_button.dart';
import 'package:doctor_app/feature/auth/register/presentation/view/register_view.dart';
import 'package:doctor_app/feature/on_boarding/data/model/on_boarding_model.dart';
import 'package:doctor_app/feature/on_boarding/presentation/view/widget/custom_page_view_list.dart';
import 'package:flutter/material.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  int currentPage = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(
      () => setState(() => currentPage = pageController.page!.round()),
    );
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            currentPage == onBoardingList.length - 2
                ? AppImages.imagesSecondOnBoardingBackground
                : AppImages.imagesFirstOnBoardingBackground,
            fit: BoxFit.cover,
          ),
        ),
        Align(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.61,
                  child: CustomPageViewList(pageController: pageController),
                ),
                const SizedBox(height: 50),
                CustomButton(
                  title: 'Get Started',
                  onPressed: () {
                    if (pageController.page!.round() ==
                        onBoardingList.length - 1) {
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        RegisterView.routeName,
                        (route) => false,
                      );
                    } else {
                      pageController.jumpToPage(
                        pageController.page!.round() + 1,
                      );
                    }
                  },
                ),
                const SizedBox(height: 12),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      RegisterView.routeName,
                      (route) => false,
                    );
                  },
                  child: Text(
                    'Skip',
                    textAlign: TextAlign.center,
                    style: AppStyles.textRegular14(
                      context,
                    ).copyWith(color: AppColors.brownColor67),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
