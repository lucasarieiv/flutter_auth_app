import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String imagePath;

  const SquareTile({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Color.fromRGBO(77, 168, 207, 1))),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 34),
        child: Image.asset(
          imagePath,
          height: 32,
        ),
      ),
    );
  }
}
