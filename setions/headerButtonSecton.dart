import 'package:facebook/widgets/iconTextButton.dart';
import 'package:flutter/material.dart';

class HeaderButtonSecton extends StatelessWidget {
  final Widget buttonOne;
  final Widget buttonTwo;
  final Widget buttonThree;

  HeaderButtonSecton(
      {required this.buttonOne,
      required this.buttonTwo,
      required this.buttonThree});

  Widget verticalDivider = VerticalDivider(
    thickness: 0.2,
    color: Colors.grey,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buttonOne,
          verticalDivider,
          buttonTwo,
          verticalDivider,
          buttonThree,
        ],
      ),
    );
  }
}
