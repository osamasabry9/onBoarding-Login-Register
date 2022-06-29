import 'package:flutter/material.dart';
import 'package:task1/config/app_colors.dart';
import 'package:task1/config/app_images.dart';
import 'package:task1/config/app_styles.dart';
import 'package:task1/views/pages/02_login_page.dart';
import 'package:task1/views/widgets/auth_widgets/group_button.dart';
import 'package:task1/views/widgets/auth_widgets/input_filed.dart';
import 'package:task1/views/widgets/auth_widgets/phone_field.dart';
import 'package:task1/views/widgets/auth_widgets/question_account.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey _formKey = GlobalKey<FormState>();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.centerLeft,
              children: [
                Image.asset(
                  AppImages.background,
                  height: size.height * 0.15,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(size.width * 0.015),
                    margin: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.black,
                    ),
                    child: const Icon(Icons.arrow_back_ios,
                        size: 20, color: Colors.white),
                  ),
                ),
              ],
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
                        'Register',
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
                  MyInputField(
                    lable: 'Email',
                    controller: emailController,
                    hint: 'example@email.com',
                    validatorText: 'Please enter a valid email',
                  ),
                  const SizedBox(height: 10),
                  PhoneField(phoneController: phoneController),
                  MyInputField(
                    lable: 'Password',
                    isPassword: true,
                    controller: passwordController,
                    hint: 'Password',
                    validatorText: 'Please enter a valid password',
                  ),
                  GroupButton(
                    width: size.width * 0.4,
                    onTapButton: () => null,
                    titelButton: 'Register',
                    onTapGoogle: () => null,
                  ),
                  const QuestionHaveAnAccount(
                    text: 'Has any account?',
                    textButton: 'Sign in here',
                    pass: LoginPage(),
                  ),
                  const SizedBox(height: 20),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'By registering your account, you agree to our ',
                          style: AppStyles.description
                              .copyWith(color: Colors.black),
                        ),
                        Text(
                          'Terms and Conditions.',
                          style: AppStyles.description
                              .copyWith(color: AppColors.MAIN),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
