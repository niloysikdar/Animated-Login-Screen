import 'package:animated_login_screen/constants/colors.dart';
import 'package:animated_login_screen/widgets/create_account_headline.dart';
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
          child: Column(
            children: [
              SizedBox(height: topPadding),
              SizedBox(height: 10),
              RocketWidget(),
              SizedBox(height: 10),
              CreateHeadline(),
              Padding(
                padding: const EdgeInsets.all(25),
                child: TextFormField(
                  cursorColor: Colors.black,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.account_circle_rounded,
                      color: Colors.black87,
                    ),
                    filled: true,
                    fillColor: Color(0xFFEFEEEE),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 18.0, horizontal: 30.0),
                    hintText: "Username",
                    hintStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                    errorStyle: TextStyle(
                      color: Colors.red.shade700,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
