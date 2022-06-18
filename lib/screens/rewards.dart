import 'package:assignment_ui/constant.dart';
import 'package:assignment_ui/custom_widgets/rounded_card.dart';
import 'package:flutter/material.dart';

import '../custom_widgets/text.dart';

class RewardPage extends StatelessWidget {
  const RewardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kanotherbackground,
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                margin: const EdgeInsets.all(14),
                width: size.width * 1,
                height: size.height * 0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xFF1F222A),
                ),
                child: Expanded(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 9.0),
                        child: const Text(
                          "Cashback earned",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      Container(
                        child: const Text(
                          "\$540+",
                          style: kbigNumberText,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(8.0),
                        child: longBtn("View your cashback History"),
                        // child: RoundedCard('View your cashback History'),
                      ),
                    ],
                  ),
                ),
              ),
              Header("Scratch Cards"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    scratchcards(),
                    scratchcards(),
                    scratchcards(),
                    scratchcards(),
                  ],
                ),
              ),
            ],
          ),
          Header("Collect Rewards!"),
          rewards(
            "Flat 50 off On food Delivery",
            "On orders above 99 on Swaggy, Somato",
            "reward1",
            Color(0xFF242042),
          ),
          rewards(
            "20% Cashback On Amason",
            "Up to Rs 150 Minimum Order 1000",
            "reward2",
            Color(0xFF422038),
          ),
        ],
      ),
    );
  }
}

scratchcards() {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Column(
      children: [
        Container(
          height: 140,
          width: 180,
          decoration: BoxDecoration(
            color: const Color(0xFF242042),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Image(
            image: NetworkImage("https://i.gifer.com/av.gif"),
          ),
        ),
      ],
    ),
  );
}

rewards(String reward, String description, String image, Color rewardcolor) {
  return Container(
    margin: EdgeInsets.all(10),
    width: double.infinity,
    padding: const EdgeInsets.all(10),
    height: 120,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(24),
      color: rewardcolor,
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          SizedBox(
            width: 100,
            child: Center(
              child: Image(
                image: AssetImage('assets/images/$image.png'),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                reward,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                description,
                style: const TextStyle(color: Colors.white, fontSize: 11),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  splashFactory: NoSplash.splashFactory,
                  backgroundColor: Color(0xFF44274E),
                ),
                onPressed: () {},
                child: const Text(
                  'Collect Now',
                  style: TextStyle(color: Colors.pinkAccent),
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}
