import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding_Screen extends StatefulWidget {
  const Onboarding_Screen({super.key});

  @override
  State<Onboarding_Screen> createState() => _Onboarding_ScreenState();
}

class _Onboarding_ScreenState extends State<Onboarding_Screen> {

  final controller = PageController();
  @override
  void dispose() {
    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //padding: EdgeInsets.only(bottom: 22),
        child: PageView(
          controller: controller,
          children: [
            Container(
              color: Colors.white,
              child: Stack(
                children: [
                  Positioned(
                    bottom: 330,
                    child: Image.asset('assets/Image/Group7.png')
                ),
                  Positioned(
                    bottom: 212,
                    left: 37,
                    right: 40,
                    child: Text(
                      "Let’s Find Your Sweet\n & Dream Place",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 28,
                      ),
                      textAlign: TextAlign.center,
                  ),),
                  Positioned(
                    bottom: 160,
                    left: 37,
                    right: 40,
                    child: Text(
                      "Get the opportunity to stay that you dream\n of at an affordable price",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xff787878),
                      ),
                      textAlign: TextAlign.center,
                  ),),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Stack(
                children: [
                  Positioned(
                    bottom:400,
                    left: 16,
                    child: Image.asset("assets/Image/slider2.png"),
                  ),
                  Positioned(
                    bottom: 242,
                    left: 37,
                    right: 40,
                    child: Text(
                      "Let’s Find Your Sweet\n & Dream Place",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 28,
                      ),
                      textAlign: TextAlign.center,
                    ),),
                  Positioned(
                    bottom: 200,
                    left: 37,
                    right: 40,
                    child: Text(
                      "Get the opportunity to stay that you dream\n of at an affordable price",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Color(0xff787878),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 320),
              color: Colors.white,
              child: Column(
                children: [
                  Text(
                    "Let’s Find Your Sweet\n & Dream Place",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 32,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Image.network(
                      'https://t3.ftcdn.net/jpg/02/77/05/92/360_F_277059284_8Xb04OKskch27gEcxkwVqSfdGkhiIV4G.jpg',
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.fitWidth,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        height: 133,
        color: Colors.white,
        padding: EdgeInsets.only(left: 16, right: 16, bottom: 23),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SmoothPageIndicator(
              controller: controller,
              count: 3,

              onDotClicked: (index) => controller.nextPage(
                  duration: Duration(seconds: 1),
                  curve: Curves.ease
              ),
              effect: WormEffect(
                spacing: 12,
                dotColor: Color(0xffD9D9D9),
                activeDotColor: Color(0xff2C67FF),
                dotWidth: 9,
                dotHeight: 7
              ),
            ),
            ElevatedButton(
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
          ],
        ),

      ),
    );

  }
}
