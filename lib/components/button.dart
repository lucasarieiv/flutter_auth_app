import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Function()? onTap;

  const Button({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap,
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 18),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Color.fromRGBO(77, 168, 207, 1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Center(
              child: Text('Entrar',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 16)))),
    );
  }
}
