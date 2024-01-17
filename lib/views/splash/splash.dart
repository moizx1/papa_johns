import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:papa_johns/constants/app_constants.dart';

import '../../controller/splash_controller.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: SplashController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: AppColors.red,
          body: Center(
            child: Image.asset(
              AppImages.splashLogo,
              scale: 1.5,
            ),
          ),
        );
      },
    );
  }
}
