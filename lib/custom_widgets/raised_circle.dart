import 'dart:html';

import 'package:flutter/material.dart';

class MyCircleAavators extends StatelessWidget {
  MyCircleAavators(this.url, this.myText, {Key? key}) : super(key: key);
  String url;
  String myText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(url),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              myText,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
