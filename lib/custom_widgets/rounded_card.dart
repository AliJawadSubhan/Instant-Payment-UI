import 'package:flutter/material.dart';

class RoundedCard extends StatelessWidget {
  RoundedCard(this.roundedButtonText);
  String roundedButtonText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(8.0),
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xFF343645),
      ),
      child: Center(
        child: Text(
          roundedButtonText,
          style: TextStyle(fontSize: 15, color: Colors.white),
        ),
      ),
    );
  }
}

longBtn(String text) {
  return SizedBox(
    width: double.infinity,
    height: 50,
    child: TextButton(
        style: TextButton.styleFrom(
          primary: Colors.white,
          backgroundColor: const Color.fromARGB(255, 79, 84, 97),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
        onPressed: () {},
        child: Text(text)),
  );
}
