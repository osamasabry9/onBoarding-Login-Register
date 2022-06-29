import 'package:flutter/material.dart';
import 'package:task1/views/pages/01_onboarding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Task1',
      home: OnboardingScreen(),
    );
  }
}
