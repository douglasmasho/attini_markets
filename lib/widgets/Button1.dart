import 'package:flutter/material.dart';

class Button1 extends StatelessWidget {
  final Function Callback;
  final String text;
  Button1({required this.Callback, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Color(0xffBC2132)),
      child: FlatButton(
          onPressed: () {
            Callback();
          },
          color: Color(0xffBC2132),
          child: Text(text, style: Theme.of(context).textTheme.button)),
    );
  }
}
