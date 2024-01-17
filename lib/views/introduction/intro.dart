import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:papa_johns/views/introduction/page1.dart';
import 'package:papa_johns/views/introduction/page2.dart';
import 'package:sizer/sizer.dart';
import '../../controller/intro_controller.dart';
import '../../constants/app_constants.dart';

class Introduction extends StatelessWidget {
  const Introduction({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<IntroController>(
      init: IntroController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: controller.currentPosition % 2 == 0
              ? AppColors.white
              : AppColors.red,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(height: 10.h),
              Expanded(
                flex: 7,
                child: PageView(
                  onPageChanged: (pageIndex) =>
                      controller.onPageChanged(pageIndex),
                  children: controller.pages,
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DotsIndicator(
                      dotsCount: controller.totalDots,
                      position: controller.currentPosition,
                      axis: Axis.horizontal,
                      reversed: false,
                      decorator: DotsDecorator(
                        size: const Size.square(9.0),
                        color: const Color(0xffD5E2F5),
                        activeColor: controller.currentPosition % 2 == 0
                            ? AppColors.red
                            : AppColors.yellow,
                        activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 11.h,
                alignment: Alignment.topCenter,
                child: controller.currentPosition == 3
                    ? TextButton(
                        onPressed: controller.onSkip,
                        child: const Text(
                          'Skip For Now',
                          style: TextStyle(color: AppColors.white),
                        ),
                      )
                    : Container(),
              ),
            ],
          ),
        );
      },
    );
  }
}
