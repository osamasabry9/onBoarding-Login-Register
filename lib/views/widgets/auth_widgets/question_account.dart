import 'package:flutter/material.dart';
import 'package:task1/config/app_colors.dart';
import 'package:task1/config/app_styles.dart';

class QuestionHaveAnAccount extends StatelessWidget {
  final String text;
  final String textButton;
  final Widget pass;
  const QuestionHaveAnAccount({
    Key? key,
    required this.text,
    required this.textButton, required this.pass,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text, style: AppStyles.paragraph1.copyWith(color: Colors.black)),
        const SizedBox(width: 5),
        InkWell(
          onTap: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => pass,
              ),
              (route) => false,
            );
          },
          child: Text(textButton,
              style: AppStyles.paragraph1.copyWith(color: AppColors.MAIN)),
        ),
      ],
    );
  }
}
