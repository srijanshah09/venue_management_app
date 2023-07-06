import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';
import 'package:venue_management_app/src/features/authentication/models/model_on_boarding.dart';

import '../../../constants/colors.dart';
import '../../../constants/image_strings.dart';
import '../../../constants/text_strings.dart';
import '../screens/onboarding_screen/on_boarding_page_widget.dart';

class OnBoardingController extends GetxController {
  final controller = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [
    OnBoardingPage(
      model: OnBoardingModel(
        image: tSplashImage,
        title: onBoardingTitle1,
        subTitle: onBoardingSubTitle1,
        counterText: onBoardingCounter1,
        bgColor: Colors.red,
      ),
    ),
    OnBoardingPage(
      model: OnBoardingModel(
        image: tSplashImage,
        title: onBoardingTitle2,
        subTitle: onBoardingSubTitle2,
        counterText: onBoardingCounter2,
        bgColor: onBoardingScreenPage2Color,
      ),
    ),
    OnBoardingPage(
      model: OnBoardingModel(
        image: tSplashImage,
        title: onBoardingTitle3,
        subTitle: onBoardingSubTitle3,
        counterText: onBoardingCounter3,
        bgColor: onBoardingScreenPage3Color,
      ),
    ),
  ];

  skip() => controller.jumpToPage(page: 2);

  animateToNextSlide() {
    int nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }

  onPageChangedCallback(int activePageIndex) => currentPage.value;
}
