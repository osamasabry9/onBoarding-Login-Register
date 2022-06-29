

import 'package:task1/views/widgets/intro_page.dart';

import 'app_images.dart';

class AppData {
  static const List<IntroPage> introPages = [
    IntroPage(
        image: AppImages.onBoarding_1,
        headline: "Get food  delivered to your doorstep asap",
        description: "We have young and professional delivery team to deliver team that will bring your food as soon as possible to your door step"),
    IntroPage(
        image: AppImages.onBoarding_2,
        headline: "Buy any food form your favourite restaurants",
        description: "We are constantly adding your favourite restaurant throughout the territory and around your area carefully selected"),

  ];
}
