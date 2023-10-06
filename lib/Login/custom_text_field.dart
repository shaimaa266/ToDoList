import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  CustomText({required this.hintText });
  String? hintText;
  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: const TextStyle(
                color: Colors.grey,
                backgroundColor: Colors.white54,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Color(0xffF4C2C2), width: 5),
                borderRadius: BorderRadius.circular(10),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black12, width: 5),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        );


  }
}
