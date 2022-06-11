import 'package:assignment_ui/constant.dart';
import 'package:assignment_ui/main.dart';
import 'package:assignment_ui/screens/balance.dart';
import 'package:assignment_ui/screens/home.dart';
import 'package:assignment_ui/screens/offers.dart';
import 'package:assignment_ui/screens/rewards.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Color(0xff181A20),
        appBar: AppBar(
          toolbarHeight: 100,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
          ),
          elevation: 0.00,
          backgroundColor: kbackgroundColor,
          leading: const Padding(
            padding: EdgeInsets.only(left: 16),
            child: CircleAvatar(
              backgroundColor: Color.fromARGB(100, 176, 190, 197),
              child: CircleAvatar(
                radius: 17,
                backgroundImage: kuserpfp,
              ),
            ),
          ),
          title: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(100, 176, 190, 197),
              borderRadius: BorderRadius.circular(50),
            ),
            height: 40.0,
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                  hintText: "Search Users..",
                  hintStyle: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Color(0xFFB0BEC5),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  suffixIcon:
                      const Icon(Icons.search, size: 25, color: Colors.white),
                ),
              ),
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: CircleAvatar(
                backgroundColor: Color.fromARGB(100, 176, 190, 197),
                child: Icon(
                  Icons.notifications,
                  size: 28,
                  color: Colors.white,
                ),
              ),
            ),
          ],
          bottom: const TabBar(
            indicatorColor: Color(0xFFB0BEC5),
            indicatorWeight: 3,
            indicatorPadding: EdgeInsets.all(10),
            tabs: [
              Tab(
                text: "Home",
              ),
              Tab(
                text: "Balance",
              ),
              Tab(
                text: "Offer",
              ),
              Tab(
                text: "Rewards",
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            HomePage(),
            BalancePage(),
            OfferPage(),
            RewardPage(),
          ],
        ),
      ),
    );
  }
}
