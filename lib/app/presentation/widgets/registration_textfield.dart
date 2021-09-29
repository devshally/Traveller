import 'package:flutter/material.dart';

class RegistrationTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;

  const RegistrationTextField(
      {Key? key, required this.controller, required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          border: Border.all(width: 1.0, color: Colors.grey),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 10.0),
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
            ),
          ),
        ),
      ),
    );
  }
}
