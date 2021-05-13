import 'package:flutter/material.dart';

Widget createButton({
  @required Color color,
  @required String text,
}) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 25),
    padding: EdgeInsets.symmetric(vertical: 18),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(40),
    ),
    child: Center(
      child: Text(
        text,
        style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w600,
          letterSpacing: 1,
        ),
      ),
    ),
  );
}
