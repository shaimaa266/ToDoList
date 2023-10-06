import 'package:flutter/material.dart';

class Button extends StatelessWidget {
   Button({required this.text});
 final String text;
  @override
  Widget build(BuildContext context) {
    return  FractionallySizedBox(
          widthFactor: 50,
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              "$text",
              style: TextStyle(color: Colors.black38, fontSize: 33),
            ),
            style: ButtonStyle(
              backgroundColor:
              MaterialStateProperty.all<Color>(const Color(0xffffedf6)),
            ),
          ),
        );
  }
}

