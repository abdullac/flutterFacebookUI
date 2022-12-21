import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';

class StatusSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Avatar(
        displayImage: abdulla,
        isStatusIndicator: false,
        imageBorder: false,
      ),
      title: TextField(
        decoration: InputDecoration(
          hintText: "Whats on yourmind?",
          hintStyle: TextStyle(color: Colors.black),
          enabledBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
        ),
      ),
    );
  }
}
