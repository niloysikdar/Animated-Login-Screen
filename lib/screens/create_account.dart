import 'package:animated_login_screen/constants/colors.dart';
import 'package:animated_login_screen/widgets/create_account_headline.dart';
import 'package:animated_login_screen/widgets/create_button.dart';
import 'package:animated_login_screen/widgets/inputfield.dart';
import 'package:animated_login_screen/widgets/rocket.dart';
import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top;
    return Container(
      decoration: BoxDecoration(
        gradient: signupPurpleGradient,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: topPadding),
                SizedBox(height: 10),
                RocketWidget(),
                SizedBox(height: 10),
                CreateHeadline(),
                CustomInputField(
                  hintText: "Username",
                  prefixIcon: Icons.account_circle_outlined,
                  obscureText: false,
                ),
                CustomInputField(
                  hintText: "Password",
                  prefixIcon: Icons.security_outlined,
                  obscureText: true,
                ),
                createButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
