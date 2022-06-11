import 'package:assignment_ui/constant.dart';
import 'package:assignment_ui/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatelessWidget {
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 8,
              child: Container(
                padding: EdgeInsets.only(top: 100.0),
                child: Image(
                  image: AssetImage("assets/images/logo.png"),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 150.0),
              height: 60.0,
              width: 160.0,
              decoration: BoxDecoration(
                color: Color(0xFF4D5DFA),
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xFF5626C4),
                    spreadRadius: 2,
                    offset: Offset(4, 2),
                  ),
                ],
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const Login(),
                    ),
                  );
                },
                style: TextButton.styleFrom(),
                child: const Text(
                  "INSTANT PAYMENT",
                  style: TextStyle(
                    color: Color(0xFFDADADA),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 20),
                  child: SmoothPageIndicator(
                    controller: controller,
                    count: 4,
                    effect: const SlideEffect(
                        activeDotColor: Color(0xFFDADADA),
                        dotColor: kprimaryColor,
                        dotHeight: 15.0,
                        dotWidth: 15.0),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
