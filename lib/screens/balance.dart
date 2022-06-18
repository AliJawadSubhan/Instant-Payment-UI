import 'package:assignment_ui/constant.dart';
import 'package:assignment_ui/custom_widgets/balance_container.dart';
import 'package:assignment_ui/custom_widgets/rounded_card.dart';
import 'package:flutter/material.dart';

class BalancePage extends StatelessWidget {
  const BalancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kanotherbackground,
      body: Container(
        margin: const EdgeInsets.all(14),
        width: double.infinity,
        height: size.height * 0.7,
        // color: Color(0xFF1F222A),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xFF1F222A),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Expanded(
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: Colors.white,
                    ),
                    Container(
                      child: const Text(
                        "Portfolio value",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                    const Icon(
                      Icons.auto_graph,
                      size: 20,
                      color: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 7,
                ),
                Container(
                  child: const Text(
                    "\$54,375",
                    style: kbigNumberText,
                  ),
                ),
                const SizedBox(
                  height: 7,
                ),
                Container(
                  child: const Text(
                    "In 3 accounts",
                    style: ksmallNumberText,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Expanded(
                  child: Center(
                    child: Row(
                      children: const [
                        CardRound(),
                        CardRound(),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Row(
                      children: [
                        CardRound(),
                        Container(
                          padding: EdgeInsets.all(13),
                          margin: EdgeInsets.symmetric(horizontal: 32.0),
                          height: 120.0,
                          width: 120.0,
                          decoration: BoxDecoration(
                            color: Color(0xFF1F222A),
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Container(
                            child: Icon(Icons.forward, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // RoundedCard("Add/Manage Accounts"),
                longBtn("Add/Manage Accounts"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
