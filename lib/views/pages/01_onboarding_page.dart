import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task1/config/app_data.dart';
import 'package:task1/config/app_images.dart';
import 'package:task1/config/app_styles.dart';
import 'package:task1/views/pages/02_login_page.dart';
import 'package:task1/views/pages/03_register_page.dart';
import 'package:task1/views/widgets/main_button.dart';
import 'package:task1/views/widgets/auth_widgets/question_account.dart';

import '../../config/app_colors.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController onboardController = PageController();
  bool isLast = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: InkWell(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                      (route) => false,
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.ACTIVEDOT,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 15),
                      child: Text('Skip', style: AppStyles.description),
                    ),
                  ),
                ),
              ),
              Image.asset(
                AppImages.logo,
                height: size.height * 0.08,
                width: size.width * 0.5,
              ),
              Expanded(
                child: PageView.builder(
                  controller: onboardController,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) => AppData.introPages[index],
                  onPageChanged: (index) {
                    if (index == AppData.introPages.length - 1) {
                      setState(() {
                        isLast = true;
                      });
                    } else {
                      setState(() {
                        isLast = false;
                      });
                    }
                  },
                  itemCount: AppData.introPages.length,
                ),
              ),
              const SizedBox(height: 10),
              SmoothPageIndicator(
                controller: onboardController,
                effect: ExpandingDotsEffect(
                  dotColor: Colors.grey,
                  activeDotColor: AppColors.ACTIVEDOT,
                  expansionFactor: 4,
                  dotHeight: 10,
                  dotWidth: 10,
                  spacing: 10,
                ),
                count: AppData.introPages.length,
              ),
              const SizedBox(height: 15),
              MainButton(
                onTap: () {
                  if (isLast) {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                      (route) => false,
                    );
                  } else {
                    onboardController.nextPage(
                      duration: const Duration(seconds: 1),
                      curve: Curves.fastLinearToSlowEaseIn,
                    );
                  }
                },
                title: isLast ? 'Get Started' : 'Next',
                height: size.height * 0.08,
              ),
              const SizedBox(height: 10),
              const QuestionHaveAnAccount(
                text: 'Don\'t have an account?',
                textButton: 'Sign Up',
                pass: RegisterScreen(),
              ),
              SizedBox(height: size.height * 0.03),
            ],
          ),
        ),
      ),
    );
  }
}
