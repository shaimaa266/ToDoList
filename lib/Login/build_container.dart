import 'package:flutter/material.dart';

class BuildContainer extends StatelessWidget {
  const BuildContainer({Key? key}) : super(key: key);
  final Gradient baseColor = const LinearGradient(
    colors: [
      Color(0xffCD5E77),
      Colors.deepPurple,
      Colors.black,
    ],
    begin: Alignment.centerRight,
    end: Alignment.centerLeft,
  );
  @override
  Widget build(BuildContext context) {
    return  Container(
        width: double.infinity,
        height: 250,
        decoration: BoxDecoration(
          gradient: baseColor,
        ),
        child: const Padding(
          padding: EdgeInsets.all(40.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.menu_rounded,
                color: Colors.white,
                size: 40,
              ),
            ],
          ),
        ),

    );
  }
}
