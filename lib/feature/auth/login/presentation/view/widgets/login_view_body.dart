import 'package:doctor_app/core/constant/app_colors.dart';
import 'package:doctor_app/core/constant/app_icons.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:doctor_app/core/widget/custom_back_ground.dart';
import 'package:doctor_app/core/widget/custom_button.dart';
import 'package:doctor_app/feature/auth/login/presentation/view/widgets/auth_text_field.dart';
import 'package:doctor_app/feature/auth/login/presentation/view/widgets/custom_password_field.dart';
import 'package:doctor_app/feature/auth/login/presentation/view/widgets/custom_social_auth_item.dart';
import 'package:doctor_app/feature/auth/register/presentation/view/register_view.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const CustomBackGround(),
        Positioned.fill(
          top: 120,
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Text(
                      'Welcome back',
                      style: AppStyles.textMedium24(
                        context,
                      ).copyWith(color: AppColors.blackColor00),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      'You can search c ourse, apply course and find\n scholarship for abroad studies',
                      textAlign: TextAlign.center,
                      style: AppStyles.textMedium14(
                        context,
                      ).copyWith(color: AppColors.brownColor67),
                    ),
                    SizedBox(height: MediaQuery.sizeOf(context).height * 0.1),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomSocialAuthItem(
                          image: AppIcons.iconsGoogleIcon,
                          title: 'Google',
                        ),
                        SizedBox(width: 15),
                        CustomSocialAuthItem(
                          image: AppIcons.iconsFacebookIcon,
                          title: 'Facebook',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 37)),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      AuthTextField(
                        icon: const Icon(
                          Icons.check,
                          color: AppColors.brownColor67,
                        ),
                        hintText: 'itsmemamun1@gmail.com',
                        onPressed: () {},
                      ),
                      const SizedBox(height: 18),
                      CustomPasswordField(onSaved: (value) {}),
                      const SizedBox(height: 32),
                      CustomButton(
                        title: 'Login',
                        onPressed: () {},
                        height: 60,
                      ),
                      const SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          showFirstVerificationBottomSheet(context);
                        },
                        child: Text(
                          'Forgor password',
                          style: AppStyles.textMedium14(
                            context,
                          ).copyWith(color: AppColors.greenColor0E),
                        ),
                      ),
                      SizedBox(height: MediaQuery.sizeOf(context).height * 0.2),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              RegisterView.routeName,
                            );
                          },
                          child: Text(
                            'Don’t have an account? Join us',
                            style: AppStyles.textMedium14(
                              context,
                            ).copyWith(color: AppColors.greenColor0E),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Future<dynamic> showFirstVerificationBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      elevation: 0,

      backgroundColor: Colors.white,
      context: context,
      builder: (_) {
        return SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  child: Container(
                    width: 130,
                    height: 5,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFC4C4C4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 55),
                const Text(
                  'Forgot password',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontFamily: 'Rubik',
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.30,
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Enter your email for the verification proccesss,\nwe will send 4 digits code to your email.',
                  style: TextStyle(
                    color: Color(0xFF677294),
                    fontSize: 14,
                    fontFamily: 'Rubik',
                    fontWeight: FontWeight.w400,
                    height: 1.66,
                    letterSpacing: -0.30,
                  ),
                ),
                const SizedBox(height: 36),
                const AuthTextField(hintText: 'Email'),
                const SizedBox(height: 30),
                Align(
                  child: CustomButton(
                    title: 'Continue',
                    onPressed: () {},
                    height: 60,
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        );
      },
    );
  }
}
