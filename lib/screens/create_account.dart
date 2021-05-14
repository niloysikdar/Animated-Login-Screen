import 'package:animated_login_screen/constants/colors.dart';
import 'package:animated_login_screen/screens/login.dart';
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
                CreateHeadline(
                  text1: "Hi there!",
                  text2: "Let's Get Started",
                ),
                SizedBox(height: 20),
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
                SizedBox(height: 15),
                createButton(
                  color: signupDarkPurple,
                  text: "Create an Account",
                ),
                SizedBox(height: 15),
                Text(
                  "Or",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1,
                  ),
                ),
                SizedBox(height: 15),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                    );
                  },
                  child: createButton(
                    color: Colors.white54.withOpacity(0.25),
                    text: "Log In",
                  ),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
