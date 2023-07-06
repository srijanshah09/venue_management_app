import 'package:get/get.dart';
import 'package:venue_management_app/src/features/authentication/screens/onboarding_screen/on_boarding_screen.dart';

class SplashScreenController extends GetxController {
  static SplashScreenController get find => Get.find();

  RxBool animate = false.obs;

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(Duration(milliseconds: 5000));
    Get.to(OnBoardingScreen());
  }
}
