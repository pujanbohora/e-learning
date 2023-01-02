import 'package:elearning/screens/category/category_screen.dart';
import 'package:elearning/screens/home/course_single/course_single_details_screen.dart';
import 'package:elearning/screens/home/course_single/course_single_screen.dart';
import 'package:flutter/material.dart';

import '../screens/cart/cart_screen.dart';
import '../screens/navigation/navigation.dart';
import '../screens/home/payment/payment_screen.dart';
import '../screens/splash_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {

      case SplashScreen.routeName:
        return MaterialPageRoute(
            builder: (_) => const SplashScreen());
      case NavigationScreen.routeName:
        return MaterialPageRoute(
            builder: (_) => NavigationScreen(
              data: 0,
            ));
      case CourseSingleScreen.routeName:
        return MaterialPageRoute(
            builder: (_) => CourseSingleScreen());
      case PaymentScreen.routeName:
        return MaterialPageRoute(
            builder: (_) => PaymentScreen());
      case CourseSingleDetailsScreen.routeName:
        return MaterialPageRoute(
            builder: (_) => CourseSingleDetailsScreen());
      case CartScreen.routeName:
        return MaterialPageRoute(
            builder: (_) => CartScreen());
      case CategoryScreen.routeName:
        return MaterialPageRoute(
            builder: (_) => CategoryScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => const SafeArea(
              child: Scaffold(
                body: Text("Page not found"),
              ),
            ));
    }
  }
}
