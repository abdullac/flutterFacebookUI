import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:facebook/widgets/circularButton.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final String labelText;
  final String storyImage;
  final String avatarImage;
  final bool isStatusIndiatorStory;

  const StoryCard({
    required this.labelText,
    required this.storyImage,
    required this.avatarImage,
    this.isStatusIndiatorStory = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      margin: EdgeInsets.only(right: 4, left: 3, bottom: 5, top: 5),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            storyImage,
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          Positioned(
              left: 2,
              top: 2,
              child: isStatusIndiatorStory
                  ? CircularButton(
                      buttonIcon: Icons.add,
                      buttonAction: () {
                        print("add story");
                      },
                      iconColor: Colors.blue,
                    )
                  : Avatar(
                      displayImage: avatarImage,
                      isStatusIndicator: false,
                      imageBorder: true,
                      avatarSize: 28,
                      
                    )),
          Positioned(
              left: 8,
              bottom: 8,
              child: Text(
                labelText != null ? labelText : "N/A",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ))
        ],
      ),
    );
  }
}
