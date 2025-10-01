import 'package:doctor_app/core/constant/app_colors.dart';
import 'package:doctor_app/feature/auth/login/presentation/view/widgets/auth_text_field.dart';
import 'package:flutter/material.dart';

class CustomPasswordField extends StatefulWidget {
  const CustomPasswordField({super.key, this.onSaved});
  final Function(String?)? onSaved;
  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool isSecure = true;
  @override
  Widget build(BuildContext context) {
    return AuthTextField(
      hintText: 'Password',
      onSaved: widget.onSaved,
      isObscure: isSecure,
      keyboardType: TextInputType.visiblePassword,
      icon: GestureDetector(
        onTap: () {
          setState(() {
            isSecure = !isSecure;
          });
        },
        child: isSecure
            ? const Icon(
                Icons.visibility_off_outlined,
                color: AppColors.brownColor67,
              )
            : const Icon(
                Icons.visibility_outlined,
                color: AppColors.brownColor67,
              ),
      ),
    );
  }
}
