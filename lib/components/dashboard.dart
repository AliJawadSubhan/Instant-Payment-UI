import 'package:assignment_ui/constant.dart';

import 'package:assignment_ui/screens/balance.dart';

import 'package:assignment_ui/screens/home.dart';
import 'package:assignment_ui/screens/offers.dart';
import 'package:assignment_ui/screens/rewards.dart';
import 'package:flutter/material.dart';

import '../screens/notifications.dart';
import '../screens/profile.dart';

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
        backgroundColor: const Color(0xff181A20),
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
          // leading
          leading: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Profile()));
              },
              child: const CircleAvatar(
                // radius: 30.0,
                child: ClipOval(child: Image(image: kuserpfp)),
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
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: CircleAvatar(
                radius: 20,
                backgroundColor: const Color.fromARGB(100, 176, 190, 197),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Notifications(),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
          bottom: const TabBar(
            indicatorColor: Color(0xFFB0BEC5),
            indicatorWeight: 3,
            indicatorPadding: EdgeInsets.all(10),
            tabs: [
              Tab(
                child: Text(
                  "Home",
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Tab(
                child: Text(
                  "Balance",
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Tab(
                child: Text(
                  "Offer",
                  style: TextStyle(fontSize: 14),
                ),
              ),
              Tab(
                child: Text(
                  "Rewards",
                  style: TextStyle(fontSize: 14),
                ),
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
