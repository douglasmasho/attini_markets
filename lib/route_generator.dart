import 'package:flutter/material.dart';
import "./main.dart";
import "./pages/SignUp.dart";
import "./pages/splash.dart";

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //getting arguments passed in while calling pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case "/second":
        if (args is String) {
          return MaterialPageRoute(builder: (_) => SignUp(data: args));
        }
        return _errorRoute();
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
          appBar: AppBar(
            title: Text("Error"),
          ),
          body: Center(
            child: Text("Error"),
          ));
    });
  }
}
