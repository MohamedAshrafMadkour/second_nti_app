import 'package:doctor_app/core/widget/custom_back_ground.dart';
import 'package:doctor_app/feature/find_doctor/presentation/view/widget/custom_find_doctor_arrow_back.dart';
import 'package:doctor_app/feature/main/presentation/view/widget/custom_fav_item_list.dart';
import 'package:doctor_app/feature/main/presentation/view/widget/custom_home_feature_item_list.dart';
import 'package:doctor_app/feature/main/presentation/view/widget/custom_popular_doctor_header.dart';
import 'package:doctor_app/feature/main/presentation/view/widget/search_text_field.dart';
import 'package:flutter/material.dart';

class FavoriteSection extends StatelessWidget {
  const FavoriteSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        CustomBackGround(),
        CustomArrowBackAppBar(title: 'Favorite Doctors'),
        Positioned.fill(
          top: 100,
          child: Padding(
            padding: EdgeInsets.only(left: 20),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    children: [SearchTextField(), SizedBox(height: 24)],
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: CustomFavItemList(),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      SizedBox(height: 29),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: CustomHomeSectionHeader(
                          headerTitle: 'Feature Doctors',
                        ),
                      ),
                      SizedBox(height: 29),
                    ],
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: CustomHomeFeatureItemList(),
                  ),
                ),
                SliverToBoxAdapter(child: SizedBox(height: 20)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
