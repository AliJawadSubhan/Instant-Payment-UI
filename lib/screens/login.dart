import 'package:assignment_ui/constant.dart';
import 'package:assignment_ui/custom_widgets/card.dart';
import "package:flutter/material.dart";

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Scaffold(
        backgroundColor: kbackgroundColor,
        body: Column(
          children: [
            Container(
              height: size.height * 0.7,
              width: double.infinity,
              // height: 400,
              // width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    "assets/images/background.png",
                  ),
                ),
              ),
              child: Expanded(
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 50,
                      left: 25,
                      height: 200.0,
                      width: 200.0,
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image:
                                AssetImage("assets/images/backgroundhuman.png"),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 170,
                      left: 25,
                      height: 200.0,
                      width: 200.0,
                      child: Container(
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image:
                                AssetImage("assets/images/backgroundstars.png"),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 24,
                      left: 25,
                      child: Text(
                        "Login with your phone".toUpperCase(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            MyCard(),
            MyCard(),
            Container(
              child: Text(
                'Your persnoal details are safe with us',
                style: TextStyle(color: ksmallText),
              ),
            )
          ],
        ),
      ),
    );
  }
}
