import 'package:animated_login_screen/constants/colors.dart';
import 'package:animated_login_screen/screens/create_account.dart';
import 'package:animated_login_screen/widgets/create_account_headline.dart';
import 'package:animated_login_screen/widgets/create_button.dart';
import 'package:animated_login_screen/widgets/inputfield.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: loginPurpleGradient,
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Image.asset("assets/images/person_&_dog.png"),
                ),
                CreateHeadline(
                  text1: "Welcome Back!",
                  text2: "Please, Log In",
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
                  color: loginDarkPurple,
                  text: "Continue >",
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
                        builder: (context) => CreateAccount(),
                      ),
                    );
                  },
                  child: createButton(
                    color: Colors.white54.withOpacity(0.25),
                    text: "Create an Account",
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
