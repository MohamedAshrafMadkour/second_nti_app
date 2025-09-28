import 'package:doctor_app/core/constant/app_images.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomHomeListTile extends StatelessWidget {
  const CustomHomeListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.18,
      decoration: const ShapeDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.00, 0.05),
          end: Alignment(0.93, 1.10),
          colors: [Color(0xFF0EBE7E), Color(0xFF07D9AD)],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: ListTile(
          title: Text(
            'Hi Handwerker! ',
            style: AppStyles.textLight20(context).copyWith(color: Colors.white),
          ),
          subtitle: Text(
            'Find Your Doctor',
            style: AppStyles.textBold25(context).copyWith(color: Colors.white),
          ),
          trailing: Image.asset(AppImages.imagesTest3),
        ),
      ),
    );
  }
}
