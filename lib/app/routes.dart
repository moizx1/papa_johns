import 'package:get/get.dart';
import 'package:papa_johns/views/home/home_screen.dart';
import 'package:papa_johns/views/order_type/pick_up.dart';
import 'package:papa_johns/views/order_type/start_order.dart';

import '../views/introduction/intro.dart';
import '../views/order_type/delivery.dart';
import '../views/splash/splash.dart';

class AppRoutes {
  static final List<GetPage> pages = [
    GetPage(name: '/', page: () => Splash()),
    GetPage(name: '/intro', page: () => Introduction()),
    GetPage(name: '/start_order', page: () => StartOrder()),
    GetPage(name: '/pick_up', page: () => PickUp()),
    GetPage(name: '/delivery', page: () => Delivery()),
    GetPage(name: '/home', page: () => HomeScreen()),
  ];
}