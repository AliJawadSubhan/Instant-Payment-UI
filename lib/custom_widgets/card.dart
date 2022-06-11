import 'package:assignment_ui/constant.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
   

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(40.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      child: const ListTile(
        leading: Text(
          "+92",
          style: TextStyle(color: kprimaryColor, fontWeight: FontWeight.bold),
        ),
        title: Text(
          "Enter Mobile Number",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF858891),
          ),
        ),
      ),
    );
  }
}
