import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:papa_johns/app/theme.dart';
import 'package:sizer/sizer.dart';

import '/app/routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          title: 'Papa Johns',
          theme: AppTheme.theme(),
          initialRoute: '/',
          getPages: AppRoutes.pages,
        );
      },
    );
  }
}
