import 'package:flutter/material.dart';

class CreateHeadline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Hi there!",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        Text(
          "Let's Get Started",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
          ),
        ),
      ],
    );
  }
}
