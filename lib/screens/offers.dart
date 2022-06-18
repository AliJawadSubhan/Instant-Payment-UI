import 'package:assignment_ui/constant.dart';
import 'package:flutter/material.dart';

class OfferPage extends StatelessWidget {
  const OfferPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kanotherbackground,
      body: ListView(
        children: [
          Column(
            children: [
              Offer(
                "Mobile Recharge Offer\n Use Code FIRST20",
                "Get 20 % Instant cashback upto Rs 50 on your firs mobile recharge. T&C apply",
                "offer1",
                Color(0xFF242042),
              ),
              Offer(
                "DTH Recharge Offer\nUse Code FIRSDTHT20",
                "Get 20 % Instant cashback upto Rs 50 on your first DTH recharge. T&C apply",
                "offer2",
                Color(0xFF3B2042),
              ),
              Offer(
                "Flipcart Shopping Offer",
                "Shop on Flipcart using our payment system to get upto 50% cashback . T&C appply",
                "offer3",
                Color(0xFF422028),
              ),
              Offer(
                "Money Transfer Offer",
                "Get a scratch card with assuerd casbck and coupons on Money Transfer of Rs 500 or more . T&C apply",
                "offer4",
                Color(0xFF242042),
              ),
              Offer(
                "Rs 50 Off on Flights",
                "Get instant discount on flat 50 Rs on Flight ticket booking. T&C apply",
                "offer5",
                Color(0xFF3B2042),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Offer extends StatelessWidget {
  Offer(this.offers, this.description, this.image, this.rewardcolor, {Key? key})
      : super(key: key);

  Color rewardcolor;
  String offers;
  String description;
  String image;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(10),
      width: size.width * 1,
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    offers,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: description,
                          style: TextStyle(color: Colors.white, fontSize: 11)),
                    ]),
                    //    text : TextSpan(
                    //   text : description,
                    //   style: DefaultTextStyle.of(context).style, children: [ TextStyle(
                    //     color:  Colors.white,
                    //     fontSize: 11,
                    //   ),
                    //   ],
                    // ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
