import 'package:flutter/material.dart';

class TextFieldComponent extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;
  final String label;

  const TextFieldComponent(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText,
      required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            controller: controller,
            obscureText: obscureText,
            keyboardType: (label == 'E-mail'
                ? TextInputType.emailAddress
                : TextInputType.text),
            decoration: InputDecoration(
                suffixIcon: Icon(obscureText ? Icons.visibility_off : null),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.white)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide:
                        BorderSide(color: Color.fromRGBO(77, 168, 207, 1))),
                fillColor: Color.fromRGBO(242, 242, 242, 1),
                filled: true,
                hintText: hintText),
          ),
        ),
      ],
    );
  }
}
