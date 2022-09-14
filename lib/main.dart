import 'package:easypay/Controller/home_controller.dart';
import 'package:easypay/Controller/splash_controller.dart';
import 'package:easypay/Routes/routes.dart';
import 'package:easypay/Routes/routes_name.dart';
import 'package:easypay/View/home.dart';
import 'package:easypay/View/not_found.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const MyApp());
  Get.put(SplashScreenController());
  Get.put(HomeController());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/splash',
      unknownRoute: GetPage(name: '/not-found', page: () => const NotFoundPage()),
      getPages: RoutingGetX().route,
    );
  }
}
