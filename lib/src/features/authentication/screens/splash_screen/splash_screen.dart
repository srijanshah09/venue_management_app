import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:venue_management_app/src/constants/image_strings.dart';
import 'package:venue_management_app/src/constants/sizes.dart';
import 'package:venue_management_app/src/constants/text_strings.dart';
import 'package:venue_management_app/src/features/authentication/controllers/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
      body: Stack(
        children: [
          Obx(
            () => AnimatedPositioned(
              duration: Duration(milliseconds: 1600),
              top: splashController.animate.value ? -20 : -60,
              right: splashController.animate.value ? -20 : -60,
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 4,
                height: MediaQuery.of(context).size.width / 4,
                child: const Image(
                  image: AssetImage(tSplashIcon),
                ),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: Duration(milliseconds: 1600),
              top: (MediaQuery.of(context).size.width / 4) + 40,
              left: splashController.animate.value
                  ? tContainerSpace
                  : -MediaQuery.of(context).size.width,
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 1600),
                opacity: splashController.animate.value ? 1 : 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      appName,
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    Text(
                      appMoto,
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: Duration(milliseconds: 1600),
              bottom: splashController.animate.value ? 100 : -300,
              left: tContainerSpace,
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 1600),
                opacity: splashController.animate.value ? 1 : 0,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: const Image(
                    image: AssetImage(tSplashImage),
                  ),
                ),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: Duration(milliseconds: 1600),
              bottom: splashController.animate.value ? -30 : -60,
              left: splashController.animate.value ? -30 : -60,
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 4,
                height: MediaQuery.of(context).size.width / 4,
                child: const Image(
                  image: AssetImage(tSplashIcon),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
