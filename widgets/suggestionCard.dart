import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {
  final String suggestAvatarImage;
  final String suggestName;
  final String MutualCount;
  SuggestionCard(
      {required this.suggestAvatarImage,
      required this.suggestName,
      required this.MutualCount});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190,
      margin: EdgeInsets.only(right: 7, left: 7),
      child: Stack(
        children: [
          sugestionImage(),
          suggetionDetails(),
        ],
      ),
    );
  }

  Widget sugestionImage() {
    return Positioned(
      top: 0,
      right: 0,
      left: 0,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(9),
          topRight: Radius.circular(9),
        ),
        child: Image.asset(
          suggestAvatarImage,
          height: 170,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget suggetionDetails() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[200],
            border: Border.all(color: Colors.grey, width: 0.2),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(4),
                bottomRight: Radius.circular(4))),
        padding: EdgeInsets.all(8),
        height: 98,
        //color: Colors.grey[200],
        child: Column(
          children: [
            Text(
              suggestName != null ? suggestName : '',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text("${MutualCount != null ? MutualCount : ''} Mutual Friends"),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  suggestionButton(
                    action: () {
                      print("add friend button pressed");
                    },
                    buttonText: "Add Friend",
                    buttonTextColor: Colors.white,
                    buttonColor: Color.fromARGB(255, 33, 82, 243),
                  ),
                  suggestionButton(
                    action: () {
                      print("Remove button pressed");
                    },
                    buttonText: "Remove",
                    buttonTextColor: Color.fromARGB(255, 33, 82, 243),
                    buttonColor: Color.fromARGB(255, 203, 203, 203),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget suggestionButton({
    required Function() action,
    required String buttonText,
    required Color buttonTextColor,
    required Color buttonColor,
  }) {
    return ElevatedButton(
      onPressed: action,
      child: Text(
        buttonText,
        style: TextStyle(fontSize: 13),
      ),
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(buttonTextColor),
        backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            EdgeInsets.only(left: 10, right: 10)),
      ),
    );
  }
}
