import 'package:doctor_app/core/constant/app_icons.dart';
import 'package:flutter/material.dart';

class IllnessItemModel {
  final String image;
  final List<Color> color;

  IllnessItemModel({required this.image, required this.color});
}

List<IllnessItemModel> illnessItemsList = [
  IllnessItemModel(
    image: AppIcons.iconsToothIcon,
    color: const [Color(0xff2753F3), Color(0xff765AFC)],
  ),
  IllnessItemModel(
    image: AppIcons.iconsHeartIcon,
    color: const [Color(0xff0EBE7E), Color(0xff07D9AD)],
  ),
  IllnessItemModel(
    image: AppIcons.iconsBoneIcon,
    color: const [Color(0xffFE7F44), Color(0xffFFCF68)],
  ),
  IllnessItemModel(
    image: AppIcons.iconsEyeIcon,
    color: const [Color(0xffFF484C), Color(0xffFF6C60)],
  ),
];
