import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  String data;
  SignUp({required this.data});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
              title: Text("Sign Up"),
              bottom: TabBar(
                tabs: [
                  Tab(text: "Seller",),
                  Tab(text: "Non-Seller"),
                ],
              )),
          body: TabBarView(
            children: [
              Center(
                child: Text("Seller Page"),
              ),
              Center(
                child: Text("Non-Seller Page"),
              ),
            ],
          )),
    );
  }
}
