import 'package:flutter/material.dart';

class Button2 extends StatelessWidget {
  final Function Callback;
  final String text;
  Button2({required this.Callback, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: FlatButton(
          onPressed: () {
            Callback();
          },
          child: Text(text,
              style: TextStyle(
                  color: Color(0xffBC2132),
                  fontWeight: FontWeight.w500,
                  fontFamily: "Poppins",
                  fontSize: 20))),
    );
  }
}
