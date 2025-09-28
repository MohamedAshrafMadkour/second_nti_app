import 'package:doctor_app/core/constant/app_colors.dart';
import 'package:doctor_app/core/constant/app_icons.dart';
import 'package:doctor_app/core/constant/app_images.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:doctor_app/feature/find_doctor/presentation/view/widget/custom_find_doctor_arrow_back.dart';
import 'package:doctor_app/feature/main/presentation/view/widget/custom_fav_item.dart';
import 'package:doctor_app/feature/main/presentation/view/widget/custom_popular_doctor_header.dart';
import 'package:doctor_app/feature/main/presentation/view/widget/search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FavoriteSection extends StatelessWidget {
  const FavoriteSection({super.key});

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
        const CustomArrowBackAppBar(title: 'Favorite Doctors'),
        Positioned.fill(
          top: 100,
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Expanded(
              child: CustomScrollView(
                slivers: [
                  const SliverToBoxAdapter(
                    child: Column(
                      children: [SearchTextField(), SizedBox(height: 24)],
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.4,
                      child: GridView.builder(
                        padding: const EdgeInsets.all(0),
                        itemCount: 4,
                        itemBuilder: (context, index) => const CustomFavItem(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
                            ),
                      ),
                    ),
                  ),
                  const SliverToBoxAdapter(
                    child: Column(
                      children: [
                        SizedBox(height: 29),
                        CustomHomeSectionHeader(headerTitle: 'Feature Doctors'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
