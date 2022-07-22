import 'package:flutter/material.dart';
import "./widgets/Button1.dart";

import "./widgets/Button2.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Attini Markets',
      theme: ThemeData(
          primaryColor: const Color(0xff0B3250),
          accentColor: const Color(0xffBC2132),
          textTheme: ThemeData.light().textTheme.copyWith(
                button: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Poppins",
                    fontSize: 20),
              )),
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    //ge the screen size
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(children: [
        Container(
            width: double.infinity,
            color: Colors.white,
            height: screenHeight / 2,
            child: Center(
                child: Image.asset("./assets/images/logo.png", width: 300))),
        Container(
          color: const Color(0xff0B3250),
          height: screenHeight / 2,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Button1(Callback: () {}, text: "Login"),
              SizedBox(height: 10),
              Button2(Callback: (){},text: "Sign Up",)
            ],
          ),
        )
      ]),
    );
  }
}
