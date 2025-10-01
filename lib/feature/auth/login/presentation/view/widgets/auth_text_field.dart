import 'package:doctor_app/core/constant/app_colors.dart';
import 'package:doctor_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField({
    required this.hintText,
    super.key,
    this.keyboardType,
    this.onPressed,
    this.isObscure,
    this.icon,
    this.onSaved,
  });
  final String hintText;
  final TextInputType? keyboardType;
  final Function(String?)? onSaved;
  final void Function()? onPressed;
  final bool? isObscure;
  final Widget? icon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter this field';
        }
        return null;
      },

      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintFadeDuration: const Duration(seconds: 1),
        contentPadding: const EdgeInsets.all(16),

        suffixIcon: icon,
        suffixIconColor: const Color(0xFFBDBDBD),

        hintStyle: AppStyles.textLight16(
          context,
        ).copyWith(color: AppColors.brownColor67),
        hintText: hintText,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
      obscureText: isObscure ?? false,

      onSaved: onSaved,
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xFFD9D9D9)),
      borderRadius: BorderRadius.circular(10),
    );
  }
}
