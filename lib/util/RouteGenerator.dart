import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nikeapp/Pages/ErrorPage.dart';
import 'package:nikeapp/Pages/HomePage.dart';
import 'package:nikeapp/Pages/IntroPage.dart';

class Routegenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    String routeName = settings.name ?? "Unknown";

    switch (routeName) {
      case "/":
        return CupertinoPageRoute(builder: (_) => IntroPage());
      case "/HomePage":
        return CupertinoPageRoute(builder: (_) => HomePage());
      default:
        return MaterialPageRoute(builder: (_) => ErrorPage());
    }
  }
}
