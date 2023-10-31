import 'package:flutter/material.dart';

class Onboarding_Screen extends StatefulWidget {
  const Onboarding_Screen({super.key});

  @override
  State<Onboarding_Screen> createState() => _Onboarding_ScreenState();
}

class _Onboarding_ScreenState extends State<Onboarding_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Container(
            color: Colors.red,
            child: Center(
              child: Text(
                "Page 1",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          Container(
            color: Colors.amber,
            child: Center(
              child: Text(
                "Page 2",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          Container(
            color: Colors.deepPurple,
            child: Center(
              child: Text(
                "Page 3",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
        ],
      ),
    );

  }
}
