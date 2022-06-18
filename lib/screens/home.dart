import 'package:assignment_ui/components/home_container.dart';
import 'package:assignment_ui/constant.dart';
import 'package:assignment_ui/custom_widgets/raised_circle.dart';
import 'package:assignment_ui/custom_widgets/raised_containers.dart';
import 'package:flutter/material.dart';

import '../custom_widgets/text.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kanotherbackground,
      body: ListView(
        children: [
          Column(
            children: [
              MoreText("Money Transfer"),
              HomeContainer(
                  // firstContainerlocalColor
                  const Color(0xFF4D3472),
                  // firstContaineroutsideColor
                  const Color(0xFF5B2E62),
                  // secondContainerLocalColor
                  const Color(0xFF277260),
                  // secondContainerOutsideColor
                  const Color(0xFF2E624C),
                  Icons.adf_scanner,
                  Icons.account_circle_outlined,
                  "Scan QR Code",
                  "Send to Contact"),
              HomeContainer(
                  const Color(0xFF617927),
                  const Color(0xFF5E622E),
                  const Color(0xFF72274D),
                  const Color(0xFF622E3A),
                  Icons.account_balance_outlined,
                  Icons.transform,
                  "Send to Bank",
                  "Self Transfer"),
              MoreText("Recharge and Bill Payments"),
              HomeContainer(
                  // firstContainerlocalColor
                  const Color(0xFF2E624C),
                  // firstContaineroutsideColor
                  const Color(0xFF2E624C),
                  // secondContainerLocalColor
                  const Color(0xFF652A5F),
                  // secondContainerOutsideColor
                  const Color(0xFF652A5F),
                  Icons.install_mobile,
                  Icons.sunny,
                  "Mobile and Recharge",
                  "Electricity Bill"),
              HomeContainer(
                  // firstContainerlocalColor
                  const Color(0xFF652A2A),
                  // firstContaineroutsideColor
                  const Color(0xFF652A2A),
                  // secondContainerLocalColor
                  const Color(0xFF2A4065),
                  // secondContainerOutsideColor
                  const Color(0xFF2A4065),
                  Icons.play_arrow,
                  Icons.money,
                  "DTH recharge",
                  "postpaid bill"),
              Header("Ticket Booking"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    RaisedContainer(Icons.play_arrow, "Movies"),
                    RaisedContainer(Icons.train, "Trains"),
                    RaisedContainer(Icons.bus_alert, "Bus"),
                    RaisedContainer(Icons.flight, "Flight"),
                    RaisedContainer(Icons.local_taxi, "Taxi"),
                  ],
                ),
              ),
              Header("More Services!"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    RaisedContainer(Icons.auto_graph, "Invest"),
                    RaisedContainer(Icons.money_off, "Loan"),
                    RaisedContainer(Icons.favorite, "Insurance"),
                  ],
                ),
              ),
              Header("Recent Transactions"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MyCircleAavators(
                        "https://avatarfiles.alphacoders.com/285/285596.jpg",
                        "Ali"),
                    MyCircleAavators(
                        "https://avatarfiles.alphacoders.com/108/108839.gif",
                        "Mehdi"),
                    MyCircleAavators(
                        "https://avatarfiles.alphacoders.com/121/121723.png",
                        "ibrahim"),
                    MyCircleAavators(
                        "https://avatarfiles.alphacoders.com/583/58385.jpg",
                        "jack"),
                    MyCircleAavators(
                        "https://image.shutterstock.com/image-vector/hoody-mask-horns-art-vector-260nw-1977194252.jpg",
                        "sana"),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
