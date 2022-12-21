import 'package:flutter/material.dart';

class IconTextButton extends StatelessWidget {
  final IconData buttonIcon;
  final String buttonText;
  final Function() buttonAction;
  final Color iconColor;
  final Color textColour;
  final Color iconContainerColor;
  final double iconSize;
  IconTextButton({
    required this.buttonIcon,
    required this.buttonText,
    required this.buttonAction,
    required this.iconColor,
    this.textColour = Colors.black,
    this.iconContainerColor = Colors.white, 
    this.iconSize = 22,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: buttonAction,
      icon: Container(
        padding: EdgeInsets.only(left: 5,right: 5,bottom: 5,top: 1),
        decoration: BoxDecoration(
          color: iconContainerColor,
          shape: BoxShape.circle
        ),
        child: Icon(
          buttonIcon,
          color: iconColor,
          size: iconSize,
        ),
      ),
      label: Text(
        buttonText,
        style: TextStyle(color: textColour),
      ),
    );
  }
}
