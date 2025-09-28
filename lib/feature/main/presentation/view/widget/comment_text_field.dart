import 'package:doctor_app/core/constant/app_colors.dart';
import 'package:doctor_app/core/constant/app_icons.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommentTextField extends StatelessWidget {
  const CommentTextField({super.key, this.onChanged});
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        prefixIcon: Image.asset(AppIcons.commentIcon, height: 16),
        fillColor: Colors.white,
        filled: true,
        suffixIcon: FittedBox(
          fit: BoxFit.scaleDown,
          child: SvgPicture.asset(AppIcons.imogeIcon),
        ),
        hintStyle: AppStyles.textRegular15(
          context,
        ).copyWith(color: AppColors.brownColor67),
        hintText: 'Add a comment....',
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xFFD9D9D9)),
      borderRadius: BorderRadius.circular(50),
    );
  }
}
