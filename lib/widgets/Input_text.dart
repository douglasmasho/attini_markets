import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class TextInputBox extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final TextInputType type;
  TextInputBox({required this.label, required this.controller, required this.type});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 25),
      child: TextField(
        keyboardType: type,
        decoration: InputDecoration(
          labelText: label,
          filled: true,
          fillColor: Color(0xffEDEDED),
          contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
          border: OutlineInputBorder(
              borderSide: BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10))),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 1),
          ),
          focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff0B3250)),
                     ),  
        ),
        controller: controller,
      ),
    );
  }
}
