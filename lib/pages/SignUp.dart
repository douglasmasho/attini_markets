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
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
      ),
      body: Center(
        child: Text(widget.data),
      ),
    );
  }
}
