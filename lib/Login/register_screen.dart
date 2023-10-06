import 'package:flutter/material.dart';
import 'package:ieee_project/Login/login_screen.dart';
import 'buildButton.dart';
import 'buildCenterText.dart';
import 'build_container.dart';
import 'build_nav_button.dart';
import 'custom_text_field.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String centerText = "Sign Up";
  String emailText="Email";
  String passText="Password";
  String confirmText="Confirm Password";
  String buttonText="Sign Up";
  String buttonNavText="Login";
  dynamic pageRoute=LoginScreen();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            BuildContainer(),
            CenterText(centerText: centerText),
            CustomText(hintText: emailText),
            CustomText(hintText: passText),
            CustomText(hintText: confirmText),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 250,
                ),
                NavButton(pageRoute: pageRoute,text: buttonNavText),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Button(text:buttonText ),
          ],
        ),
      ),
    );
  }
}
