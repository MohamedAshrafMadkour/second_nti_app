import 'package:doctor_app/core/constant/app_colors.dart';
import 'package:doctor_app/core/constant/app_icons.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:doctor_app/core/widget/custom_back_ground.dart';
import 'package:doctor_app/core/widget/custom_button.dart';
import 'package:doctor_app/core/widget/custom_dot.dart';
import 'package:doctor_app/feature/auth/login/presentation/view/login_view.dart';
import 'package:doctor_app/feature/auth/login/presentation/view/widgets/auth_text_field.dart';
import 'package:doctor_app/feature/auth/login/presentation/view/widgets/custom_password_field.dart';
import 'package:doctor_app/feature/auth/login/presentation/view/widgets/custom_social_auth_item.dart';
import 'package:flutter/material.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

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
                      'Join us to start searching',
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
                      AuthTextField(hintText: 'Name', onPressed: () {}),
                      const SizedBox(height: 18),
                      AuthTextField(hintText: 'Email', onPressed: () {}),
                      const SizedBox(height: 18),
                      CustomPasswordField(onSaved: (value) {}),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const CustomDot(color: AppColors.brownColor67),
                          const SizedBox(width: 11),
                          Text(
                            'I agree with the Terms of Service & Privacy Policy',
                            style: AppStyles.textRegular12(
                              context,
                            ).copyWith(color: AppColors.brownColor67),
                          ),
                        ],
                      ),
                      const SizedBox(height: 32),
                      CustomButton(
                        title: 'Sign up',
                        onPressed: () {
                          Navigator.pushNamed(context, LoginView.routeName);
                        },
                        height: 60,
                      ),
                      const SizedBox(height: 20),

                      SizedBox(height: MediaQuery.sizeOf(context).height * 0.1),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, LoginView.routeName);
                        },
                        child: Text(
                          'Have an account? Log in',
                          style: AppStyles.textMedium14(
                            context,
                          ).copyWith(color: AppColors.greenColor0E),
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
}
