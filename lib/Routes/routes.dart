import 'package:easypay/Routes/routes_name.dart';
import 'package:easypay/View/home.dart';
import 'package:easypay/View/not_found.dart';
import 'package:easypay/View/splash.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class RoutingGetX {
  List<GetPage<dynamic>> route = [
    GetPage(name: RoutesName().home, page: () => const HomePage()),
    GetPage(name: RoutesName().splash, page: () => SpalshPage()),
    GetPage(name: RoutesName().notFound, page: () => const NotFoundPage()),
  ];
}
