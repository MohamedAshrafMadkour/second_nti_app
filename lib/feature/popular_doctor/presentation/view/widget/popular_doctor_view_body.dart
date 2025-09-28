import 'package:doctor_app/core/constant/app_colors.dart';
import 'package:doctor_app/core/constant/app_icons.dart';
import 'package:doctor_app/core/constant/app_images.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:doctor_app/feature/main/presentation/view/widget/custom_arrow_back.dart';
import 'package:doctor_app/feature/main/presentation/view/widget/custom_popular_doctor_header.dart';
import 'package:doctor_app/feature/popular_doctor/presentation/view/widget/custom_category_item.dart';
import 'package:doctor_app/feature/popular_doctor/presentation/view/widget/custom_popular_doctor_first_section_item_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PopularDoctorViewBody extends StatelessWidget {
  const PopularDoctorViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Image.asset(
            AppImages.imagesSplashBackground,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 50,
          left: 5,
          right: 10,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomArrowBack(),
                SvgPicture.asset(
                  AppIcons.iconsSearchIcon,
                  height: 18,
                  width: 18,
                ),
              ],
            ),
          ),
        ),
        Positioned.fill(
          top: 70,
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 34),
                      const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: CustomHomeSectionHeader(
                          headerTitle: 'Popular Doctors',
                        ),
                      ),
                      const SizedBox(height: 22),
                      const CustomPopularDoctorFirstSectionItemList(),
                      const SizedBox(height: 20),
                      Text(
                        'Category',
                        style: AppStyles.textMedium18(
                          context,
                        ).copyWith(color: AppColors.brownColor33),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.only(right: 20),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) => const Padding(
                        padding: EdgeInsets.only(bottom: 14),
                        child: CustomCategoryItem(),
                      ),
                      childCount: 10,
                    ),
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
