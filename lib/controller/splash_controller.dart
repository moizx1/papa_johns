import 'dart:async';

import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Timer(
      const Duration(seconds: 1),
      () {
        Get.offNamed('/intro');
      },
    );
    super.onInit();
  }
}
