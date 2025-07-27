import 'package:flutter/material.dart';
import 'package:foodgo/Homepage.dart';

void main() {
  runApp(Foodigo());
}

class Foodigo extends StatelessWidget {
  Foodigo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.redAccent),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(), 
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 280),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: const Text(
                    "Foodigo",
                    style: TextStyle(
                      fontSize: 60,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Lobster',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Image.asset("assets/images/starterImage.png"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
