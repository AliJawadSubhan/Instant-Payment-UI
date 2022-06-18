import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RaisedContainer extends StatelessWidget {
  RaisedContainer(this.myIcon, this.myText, {Key? key}) : super(key: key);
  IconData myIcon;
  String myText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(9.0, 8, 8, 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 70,
            width: 90,
            decoration: BoxDecoration(
              color: const Color(0xFF242042),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(
              myIcon,
              size: 30,
              color: const Color(0xFFFA4D96),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              myText,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
