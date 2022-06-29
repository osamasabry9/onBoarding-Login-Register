import 'package:flutter/material.dart';
import 'package:task1/config/app_colors.dart';
import 'package:task1/config/app_styles.dart';

class MyInputField extends StatelessWidget {
  final TextEditingController controller;
  final String lable;
  final String hint;
  final String validatorText;
  final bool isPassword;
  const MyInputField({
    super.key,
    required this.controller,
    required this.hint,
    required this.validatorText,
    required this.lable,
    this.isPassword = false,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          lable,
          style: AppStyles.description,
        ),
        TextFormField(
          controller: controller,
          obscureText: isPassword,
          validator: ((value) {
            if (value!.isEmpty) {
              return validatorText;
            } else {
              return null;
            }
          }),
          decoration: InputDecoration(
            suffixIcon: isPassword
                ? const Icon(
                    Icons.remove_red_eye,
                    color: AppColors.MAIN,
                  )
                : null,
            hintText: hint,
            contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(2.0),
              borderSide: const BorderSide(
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
