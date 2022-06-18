import 'package:assignment_ui/constant.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF1F222A),
      body: ListView(
        // child: SizedBox(
        //   height: 10.0,
        children: [
          SafeArea(
            child: Container(
              height: size.height * 0.4,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: kbackgroundColor,
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: CircleAvatar(
                            backgroundColor: kprimaryColor,
                            radius: 35.0,
                            child: CircleAvatar(
                              backgroundImage: kuserpfp,
                              radius: 34,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Jawad",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                "Level 3 Ace Member!",
                                style: TextStyle(
                                  color: Color(0xFFB0BEC5),
                                ),
                              ),
                              Container(
                                height: 5.0,
                                width: 100.0,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Container(
                                  height: 20.0,
                                  width: 70.0,
                                  color: kprimaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        const SizedBox(
                          width: 110,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 29),
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.close_rounded,
                              color: Colors.white,
                              size: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          scoringNumers("1,208", "Transactions"),
                          const VerticalDivider(
                            indent: 12.0,
                            endIndent: 12.0,
                            color: Colors.white,
                          ),
                          scoringNumers("726", "Points!"),
                          const VerticalDivider(
                            color: Colors.grey,
                          ),
                          scoringNumers("9", 'Level!'),
                          const SizedBox(
                            height: 170.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

scoringNumers(String number, String desc) => Padding(
      padding: const EdgeInsets.only(left: 25, top: 14),
      child: Center(
        child: Column(
          children: [
            Text(
              number,
              style: const TextStyle(
                color: Color(0xFF4D5DFA),
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              desc,
              style: const TextStyle(
                color: Color(0xFF939FA4),
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
