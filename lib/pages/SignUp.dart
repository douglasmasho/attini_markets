import 'package:flutter/material.dart';
import "../Forms/Seller_form.dart";
import "../Forms/Non-seller_form.dart";

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
                  Tab(
                    text: "Seller",
                  ),
                  Tab(text: "Non-Seller"),
                ],
              )),
          body: TabBarView(
            children: [
              Seller_form(),
              NonSeller_form(),
            ],
          )),
    );
  }
}
