import 'package:doctor_app/core/constant/app_colors.dart';
import 'package:doctor_app/core/constant/app_images.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:doctor_app/feature/main/presentation/view/widget/custom_home_feature_item_list.dart';
import 'package:doctor_app/feature/main/presentation/view/widget/custom_home_first_section.dart';
import 'package:doctor_app/feature/main/presentation/view/widget/custom_illness-item_list.dart';
import 'package:doctor_app/feature/main/presentation/view/widget/custom_popular_doctor_header.dart';
import 'package:doctor_app/feature/main/presentation/view/widget/doctor_popular_item_list.dart';
import 'package:doctor_app/feature/main/presentation/view/widget/live_item_list.dart';
import 'package:flutter/material.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AppImages.imagesSplashBackground,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        Positioned.fill(
          child: Column(
            children: [
              const CustomHomeFirstSection(),
              const SizedBox(height: 30),
              Expanded(
                child: CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Live Doctors',
                              style: AppStyles.textMedium18(
                                context,
                              ).copyWith(color: AppColors.brownColor33),
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                    const SliverToBoxAdapter(child: LiveItemList()),
                    const SliverToBoxAdapter(child: SizedBox(height: 20)),
                    const SliverToBoxAdapter(child: CustomIllnessItemList()),
                    const SliverToBoxAdapter(
                      child: Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20),
                            CustomHomeSectionHeader(
                              headerTitle: 'Popular Doctor',
                            ),
                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                    const SliverToBoxAdapter(
                      child: Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: DoctorPopularItemList(),
                      ),
                    ),
                    const SliverToBoxAdapter(
                      child: Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 20),
                            CustomHomeSectionHeader(
                              headerTitle: 'Feature Doctor',
                            ),
                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                    const SliverToBoxAdapter(
                      child: Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: CustomHomeFeatureItemList(),
                      ),
                    ),
                    const SliverToBoxAdapter(child: SizedBox(height: 20)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
