import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:papa_johns/views/introduction/page1.dart';
import 'package:papa_johns/views/introduction/page2.dart';

import '../views/introduction/page3.dart';
import '../views/introduction/page4.dart';

class IntroController extends GetxController {
  int pageIndex = 0;
  final totalDots = 4;
  int currentPosition = 0;

  List<Widget> pages = [Page1(), Page2(), Page3(), Page4()];

  void onSkip() => Get.offNamed('/start_order');

  void onPageChanged(int pageIndex) {
    currentPosition = pageIndex;
    update();
  }
}
