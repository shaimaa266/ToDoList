import 'package:flutter/material.dart';
import 'package:ieee_project/Login/register_screen.dart';
import 'buildButton.dart';
import 'buildCenterText.dart';
import 'build_container.dart';
import 'build_nav_button.dart';
import 'custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String centerText = "Login";
  String emailText="Email";
  String passText="Password";
String buttonText="Login";
  String buttonNavText="Sign Up";
dynamic pageRoute=Register();

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
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 16, top: 16, bottom: 16, right: 30),
                  child:const   Text(
                      "Forget Password ?",
                      style: TextStyle(
                        color: Colors.black38,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

               NavButton(pageRoute: pageRoute,text: buttonNavText,)
              ],
            ),
            const SizedBox(
              height: 120,
            ),
            Button(text: buttonText),
          ],
        ),
      ),
    );
  }
}
