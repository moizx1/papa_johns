import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:papa_johns/widgets/order_type/custom_textbox.dart';
import 'package:sizer/sizer.dart';

import '../../constants/app_constants.dart';

class Delivery extends StatelessWidget {
  const Delivery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: ConstrainedBox(
          constraints: BoxConstraints.expand(height: 100.h),
          child: Stack(
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
                top: 22.h,
                bottom: 22.h,
                left: 12.w,
                right: 12.w,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 2.h),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 2,
                        child: SizedBox(),
                      ),
                      Expanded(
                        flex: 3,
                        child: Text(
                          'Delivery',
                          style: TextStyle(
                            color: AppColors.black,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: CustomTextbox(
                          label: Text('Select your City'),
                        ),
                      ),
                      SizedBox(height: 3.h),
                      Expanded(
                        flex: 4,
                        child: CustomTextbox(
                          label: Text('Select your Main Area'),
                        ),
                      ),
                      SizedBox(height: 3.h),
                      Expanded(
                        flex: 4,
                        child: CustomTextbox(
                          label: Text('Select your Sub Area'),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                              onPressed: ()=> Get.toNamed('/home'),
                              icon: Icon(
                                Icons.arrow_circle_right_rounded,
                                size: 42,
                                color: AppColors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: SizedBox(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
