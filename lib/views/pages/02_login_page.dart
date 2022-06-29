import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:task1/config/app_colors.dart';
import 'package:task1/config/app_images.dart';
import 'package:task1/config/app_styles.dart';
import 'package:task1/views/pages/03_register_page.dart';
import 'package:task1/views/widgets/auth_widgets/group_button.dart';
import 'package:task1/views/widgets/main_button.dart';
import 'package:task1/views/widgets/auth_widgets/phone_field.dart';
import 'package:task1/views/widgets/auth_widgets/question_account.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey formKey = GlobalKey<FormState>();
    final TextEditingController phoneController = TextEditingController();
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              AppImages.background,
              height: size.height * 0.3,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome to fashion Daily',
                    style: AppStyles.description,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        'Sign in',
                        style: AppStyles.hdr,
                      ),
                      const Spacer(),
                      Text(
                        'Help',
                        style: AppStyles.description.copyWith(
                          color: AppColors.MAIN,
                        ),
                      ),
                      const SizedBox(width: 3),
                      const Icon(
                        Icons.help,
                        color: AppColors.MAIN,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  PhoneField(phoneController: phoneController),
                  GroupButton(
                    width: size.width * 0.4,
                    onTapButton: () => null,
                    titelButton: 'Sign in',
                    onTapGoogle: () => null,
                  ),
                  const QuestionHaveAnAccount(
                    text: 'Dones\'t have any account?',
                    textButton: 'Register here',
                    pass: RegisterScreen(),
                  ),
                  const SizedBox(height: 20),
                  Text(
                      'Use the application according to policy rules. Any kinds of violations will be subject to sanctions.',
                      style:
                          AppStyles.description.copyWith(color: Colors.black),
                      textAlign: TextAlign.center),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
