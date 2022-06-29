import 'package:flutter/material.dart';
import 'package:task1/config/app_colors.dart';
import 'package:task1/config/app_styles.dart';
import 'package:task1/views/widgets/main_button.dart';

class GroupButton extends StatelessWidget {
  final String titelButton;
  final VoidCallback onTapButton;
  final VoidCallback onTapGoogle;
  final double width;
  const GroupButton({
    super.key,
    required this.titelButton,
    required this.onTapButton,
    required this.onTapGoogle,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        MainButton(
          onTap: () {
            onTapButton();
          },
          title: titelButton,
          color: AppColors.MAIN,
          borderRadius: 2,
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: width,
              height: 1.0,
              color: Colors.grey[300],
            ),
            const SizedBox(width: 10),
            Text(
              'or',
              style: AppStyles.description,
            ),
            const SizedBox(width: 10),
            Container(
              width: width,
              height: 1.0,
              color: Colors.grey[300],
            ),
          ],
        ),
        const SizedBox(height: 15),
        MainButton(
          onTap: () {
            onTapGoogle();
          },
          isGoogle: true,
          title: 'Sign in with Google',
          color: Colors.white,
          borderRadius: 2,
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
