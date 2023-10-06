import 'package:flutter/material.dart';

class  NavButton extends StatelessWidget {
 NavButton({required this.pageRoute,required this.text}) ;
dynamic pageRoute;
String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => pageRoute,
              ),

          );
        },
        child: Text(
         "$text",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        style: ButtonStyle(

          backgroundColor: MaterialStateProperty.all(const Color(0xffc39fd9)),

        ),

    );
  }
}

