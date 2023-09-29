import 'package:flutter/material.dart';

class MyGridView extends StatelessWidget {
  final List<String> images = [
    "assets/images/img1.jpg",
    "assets/images/img2.jpg",
    "assets/images/img3.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gallery"),
        titleTextStyle: TextStyle(color: Colors.black87,fontSize: 22),
        centerTitle: true,
      ),
      body: GridView.builder(
        itemCount: images.length * 4, // Repeat images 2 times
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          final originalIndex =
              index % images.length; // Calculate the original index

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),border: Border.all(color: Colors.black12,width: 7)
              ),
              child: Image.asset(
                images[originalIndex], // Use originalIndex here
                fit: BoxFit.fill,
              ),
            ),
          );
        },
      ),
    );
  }
}
