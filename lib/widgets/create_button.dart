import 'package:animated_login_screen/constants/colors.dart';
import 'package:flutter/material.dart';

Widget createButton() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 25),
    padding: EdgeInsets.symmetric(vertical: 18),
    decoration: BoxDecoration(
      color: signupDarkPurple,
      borderRadius: BorderRadius.circular(40),
    ),
    child: Center(
      child: Text(
        "Create an Account",
        style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
  );
}
