import 'package:doctor_app/core/constant/app_colors.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({required this.hintText, super.key, this.onChanged});
  final Function(String)? onChanged;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintStyle: AppStyles.textLight14(
          context,
        ).copyWith(color: AppColors.brownColor67),
        hintText: hintText,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xFFD9D9D9)),
      borderRadius: BorderRadius.circular(10),
    );
  }
}
