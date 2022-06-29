import 'package:flutter/material.dart';
import 'package:task1/config/app_styles.dart';

class IntroPage extends StatelessWidget {
  final String image;
  final String headline;
  final String description;

  // ignore: use_key_in_widget_constructors
  const IntroPage(
      {required this.image, required this.headline, required this.description});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              width: size.width * 0.7,
              height: size.height * 0.4,
            ),
            const SizedBox(height: 10),
            Text(headline,
                style: AppStyles.headline, textAlign: TextAlign.center),
            const SizedBox(height: 10),
            Text(description,
                style: AppStyles.description, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
