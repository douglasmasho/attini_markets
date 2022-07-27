import 'package:flutter/material.dart';
import "./widgets/Button1.dart";
import "./widgets/Button2.dart";
import "./pages/splash.dart";
import "./pages/SignUp.dart";
import "./route_generator.dart";


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    bool isLoggedIn = false;

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Attini Markets',
        theme: ThemeData(
            primaryColor: const Color(0xff0B3250),
            accentColor: const Color(0xffBC2132),
            fontFamily: "Poppins",
            textTheme: ThemeData.light().textTheme.copyWith(
                  button: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 20),
                ),
            appBarTheme: AppBarTheme(
                backgroundColor: const Color(0xff0B3250),
                titleTextStyle: TextStyle(
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 21))),
        initialRoute: "/",   
        //accepts a method that returns routes, which is stored in the custom routeGenerator class we made
        onGenerateRoute: RouteGenerator.generateRoute, 
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

    return Scaffold(
      appBar: AppBar(title: Text("Real Estate Market")),
      body: Center(child: Text("Real estate market")),
    );
  }
}
