import 'package:flutter/material.dart';
import 'package:papa_johns/constants/app_constants.dart';
import 'package:sizer/sizer.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.5.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            flex: 3,
            child: Image.asset(
              AppImages.intro1,
              scale: 1.1,
            ),
          ),
          // SizedBox(height: 3.h),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Expanded(
                  child: Text(
                    'Slice to Meet you!',
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    textAlign: TextAlign.center,
                    "We are thrilled to have you in Papa John's Family. Your quest for better pizza begins now!",
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 3.h),
        ],
      ),
    );
  }
}
