import 'package:flutter/material.dart';

class MoreText extends StatelessWidget {
  MoreText(this.header);
  String header;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        children: [
          Text(
            header,
            style: TextStyle(fontSize: 19, color: Colors.white),
          ),
          const Spacer(),
          ElevatedButton(
            // ignore: prefer_const_constructors
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color(0xFF343645)),
            ),
            onPressed: () {},
            child: const Text(
              "More",
              style: TextStyle(
                color: Color(0xFF696D78),
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  Header(this.header);
  String header;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        children: [
          Text(
            header,
            style: TextStyle(fontSize: 19, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
