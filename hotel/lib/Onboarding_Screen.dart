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
      body: Container(
        padding: EdgeInsets.only(bottom: 162),
        child: PageView(
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
      ),
      bottomSheet: Container(
        padding: EdgeInsets.only(left: 16, right: 16, bottom: 23),
        child: ElevatedButton(
          onPressed: () {  },
          child: Text(
            "Let’s Go",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,

            ),
            textAlign: TextAlign.center,
          ),
          style: ElevatedButton.styleFrom(
            fixedSize: Size(MediaQuery.of(context).size.width, 45),
            backgroundColor: Color(0xff2C67FF),
          ),

        ),

      ),
    );

  }
}
