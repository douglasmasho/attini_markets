import 'package:flutter/material.dart';
import "../widgets/Button1.dart";
import "../widgets/Button2.dart";
import "./SignUp.dart";

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(children: [
        Container(
            width: double.infinity,
            color: Colors.white,
            height: screenHeight / 2,
            child: Center(
                child: Image.asset("./assets/images/logo.png", width: 200))),
        Container(
          color: const Color(0xff0B3250),
          height: screenHeight / 2,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Button1(Callback: () {}, text: "Login"),
              SizedBox(height: 10),
              Button2(
                Callback: () {
                  //first arg=> the name of the route
                  //second arg=> the data to be passed into the new page
                  Navigator.of(context).pushNamed('/second', arguments:  "Hello there from the first page");
                },
                text: "Sign Up",
              )
            ],
          ),
        )
      ]),
    );
  }
}
