import 'package:flutter/material.dart';
import "../widgets/Input_text.dart";

class Seller_form extends StatefulWidget {
  @override
  State<Seller_form> createState() => _Seller_formState();
}

class _Seller_formState extends State<Seller_form> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final EmailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextInputBox(label: "First Name", controller: firstNameController, type: TextInputType.name),
          TextInputBox(label: "Last Name", controller: lastNameController, type: TextInputType.name),
          TextInputBox(label: "Email Address", controller: EmailController, type: TextInputType.emailAddress),
        ],
      ),
    );
  }
}
