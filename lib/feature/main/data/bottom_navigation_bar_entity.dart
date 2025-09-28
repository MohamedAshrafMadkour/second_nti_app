import 'package:doctor_app/core/constant/app_icons.dart';

class BottomNavBarEntity {
  final String activeImage, inactiveImage;

  BottomNavBarEntity({required this.activeImage, required this.inactiveImage});
}

List<BottomNavBarEntity> get bottomNavBarItems => [
  BottomNavBarEntity(
    activeImage: AppIcons.iconsUnActiveHome,
    inactiveImage: AppIcons.iconsActiveHomeIcon,
  ),
  BottomNavBarEntity(
    activeImage: AppIcons.iconsUnActiveHeartIcon,
    inactiveImage: AppIcons.iconsUnActiveHeartIcon,
  ),
  BottomNavBarEntity(
    activeImage: AppIcons.iconsUnActiveChatIcon,
    inactiveImage: AppIcons.iconsUnActiveChatIcon,
  ),
  BottomNavBarEntity(
    activeImage: AppIcons.iconsUnActiveMessageIcon,
    inactiveImage: AppIcons.iconsUnActiveMessageIcon,
  ),
];
