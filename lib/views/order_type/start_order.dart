import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:papa_johns/constants/app_constants.dart';
import 'package:papa_johns/widgets/order_type/select_type.dart';
import 'package:sizer/sizer.dart';

class StartOrder extends StatelessWidget {
  const StartOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 60.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.startOrder),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 40.h,
              color: AppColors.red,
            ),
          ),
          Positioned(
            top: 23.h,
            bottom: 23.h,
            left: 12.w,
            right: 12.w,
            child: Container(
              // padding: EdgeInsets.symmetric(vertical: 5.h),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(60),
              ),
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: SizedBox(height: 3.h),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text(
                      'Start Your Order',
                      style: TextStyle(
                        color: AppColors.red,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: SizedBox(height: 6.h),
                  ),
                  Expanded(
                    flex: 7,
                    child: SelectType(
                      image: AppImages.startOrder1,
                      label: 'Delivery',
                      onTap: () => Get.toNamed('/delivery'),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: SizedBox(height: 3.h),
                  ),
                  Expanded(
                    flex: 7,
                    child: SelectType(
                      image: AppImages.startOrder2,
                      label: 'Pick-Up',
                      onTap: () => Get.toNamed('/pick_up'),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: SizedBox(height: 3.h),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
