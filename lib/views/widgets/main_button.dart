import 'package:flutter/material.dart';
import 'package:task1/config/app_colors.dart';
import 'package:task1/config/app_images.dart';
import 'package:task1/config/app_styles.dart';

class MainButton extends StatelessWidget {
  final String title;
  final Color color;
  final Color colorBord;
  final double height;
  final double width;
  final double borderRadius;
  final VoidCallback onTap;
  final bool isGoogle;

  // ignore: use_key_in_widget_constructors
  const MainButton({
    this.title = "",
    this.color = AppColors.MAIN,
    this.colorBord = AppColors.MAIN,
    this.height = 50,
    this.width = double.infinity,
    this.borderRadius = 15,
    required this.onTap,
    this.isGoogle = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(color: colorBord, width: 1)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (isGoogle)
              Image.asset(
                AppImages.google,
                height: 25,
                width: 25,
              ),
            if (isGoogle) const SizedBox(width: 10),
            Text(
              title,
              style: isGoogle
                  ? AppStyles.paragraph1.copyWith(color: AppColors.MAIN)
                  : AppStyles.paragraph1,
            ),
          ],
        ),
      ),
    );
  }
}
