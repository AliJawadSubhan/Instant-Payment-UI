import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeContainer extends StatelessWidget {
  HomeContainer(
      this.firstContainerlocalColor,
      this.firstContaineroutsideColor,
      this.secondContainerLocalColor,
      this.secondContainerOutsideColor,
      this.customIcon,
      this.customIcon2,
      this.insideText,
      this.insideText2,
      {Key? key})
      : super(key: key);

  Color firstContainerlocalColor;
  Color firstContaineroutsideColor;
  Color secondContainerLocalColor;
  Color secondContainerOutsideColor;
  IconData customIcon;
  IconData customIcon2;
  String insideText;
  String insideText2;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: firstContaineroutsideColor,
              borderRadius: BorderRadius.circular(18),
            ),
            height: 50.0,
            width: size.width * 0.4,
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: firstContainerlocalColor,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  width: 60.0,
                  // color: Colors.green,
                  child: Center(
                    child: Icon(
                      customIcon,
                      color: Colors.white,
                      size: 27,
                    ),
                  ),
                  height: size.height * 1,
                ),
                const SizedBox(
                  width: 7,
                ),
                Container(
                  width: size.width * 0.2,
                  child: Text(
                    insideText,
                    style: const TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Container(
            decoration: BoxDecoration(
              color: secondContainerOutsideColor,
              borderRadius: BorderRadius.circular(18),
            ),
            height: 50.0,
            width: size.width * 0.4,
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: secondContainerLocalColor,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  width: 60.0,
                  height: size.height * 1,
                  child: Center(
                    child: Icon(
                      customIcon2,
                      color: Colors.white,
                      size: 27,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Container(
                  width: size.width * 0.2,
                  child: Text(
                    insideText2,
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
