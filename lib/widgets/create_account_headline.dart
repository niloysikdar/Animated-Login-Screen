import 'package:flutter/material.dart';

class CreateHeadline extends StatelessWidget {
  final String text1;
  final String text2;
  CreateHeadline({
    @required this.text1,
    @required this.text2,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text1,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        Text(
          text2,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
          ),
        ),
      ],
    );
  }
}
