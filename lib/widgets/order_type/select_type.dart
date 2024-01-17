import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../constants/app_constants.dart';

class SelectType extends StatelessWidget {
  const SelectType({
    super.key,
    required this.image,
    required this.label,
    required this.onTap,
  });

  final String image;
  final String label;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 15.h,
        margin: EdgeInsets.symmetric(horizontal: 4.h),
        padding: EdgeInsets.all(2.h),
        decoration: BoxDecoration(
            color: AppColors.red, borderRadius: BorderRadius.circular(30)),
        child: Row(
          children: [
            Image.asset(
              image,
              // scale: 2,
              height: 12.h,
              width: 12.h,
            ),
            SizedBox(width: 2.w),
            Text(
              label,
              style: TextStyle(
                color: AppColors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
