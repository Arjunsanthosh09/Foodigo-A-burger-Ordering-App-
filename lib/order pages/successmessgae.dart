import 'package:flutter/material.dart';
import 'package:foodgo/Homepage.dart';

class Successmessgae extends StatelessWidget {
  const Successmessgae({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
        body: SafeArea(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
              },
              child: Image.asset("assets/images/Frame 1.png"))
          ],
        )),
    );
  }
}