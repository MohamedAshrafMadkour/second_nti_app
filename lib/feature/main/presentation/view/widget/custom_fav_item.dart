import 'package:doctor_app/core/constant/app_colors.dart';
import 'package:doctor_app/core/constant/app_icons.dart';
import 'package:doctor_app/core/constant/app_images.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:doctor_app/feature/details/presentation/view/details_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomFavItem extends StatelessWidget {
  const CustomFavItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, DetailsView.routeName);
      },
      child: Container(
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          shadows: const [
            BoxShadow(
              color: Color(0x0F000000),
              blurRadius: 20,
              offset: Offset(0, -1),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: SvgPicture.asset(AppIcons.iconsUnFavIcon, height: 15),
              ),
              Image.asset(
                AppImages.imagesTest5,
                fit: BoxFit.cover,
                height: MediaQuery.sizeOf(context).height * 0.1,
              ),
              const SizedBox(height: 11),
              Text(
                'Dr. Shouey',
                textAlign: TextAlign.center,
                style: AppStyles.textMedium15(
                  context,
                ).copyWith(color: AppColors.brownColor33),
              ),
              const SizedBox(height: 4),
              Text(
                'Specalist Cardiology',
                style: AppStyles.textRegular12(
                  context,
                ).copyWith(color: AppColors.greenColor0E),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
