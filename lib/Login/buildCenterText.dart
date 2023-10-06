import 'package:flutter/material.dart';

class CenterText extends StatelessWidget {
 CenterText({required this.centerText}) ;
  final String centerText;

  @override
  Widget build(BuildContext context) {
    return Container(
          width: 150,height: 100,
     child: Padding(
       padding: const EdgeInsets.only(top: 30),
       child: Column(
         children: [
           Text(
             "$centerText",
             style: TextStyle(
               color: Colors.indigo,
               fontWeight: FontWeight.bold,
               fontSize: 40,
             ),
           ),
         ],
       ),
     )
    );
  }
}

