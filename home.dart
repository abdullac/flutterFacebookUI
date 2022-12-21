import 'package:facebook/assets.dart';
import 'package:facebook/setions/headerButtonSecton.dart';
import 'package:facebook/setions/roomSection.dart';
import 'package:facebook/setions/statusSection.dart';
import 'package:facebook/setions/storySection.dart';
import 'package:facebook/setions/suggestionSection.dart';
import 'package:facebook/widgets/circularButton.dart';
import 'package:facebook/widgets/iconTextButton.dart';
import 'package:facebook/widgets/postCard.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget thinDivider = Divider(thickness: 1, color: Colors.grey[300]);
    Widget thickDivider = Divider(thickness: 5, color: Colors.grey[300]);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            CircularButton(
              buttonIcon: Icons.search,
              buttonAction: () {
                print("search screen appears");
              },
            ),
            CircularButton(
              buttonIcon: Icons.chat,
              buttonAction: () {
                print("Messenger appear");
              },
            )
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            thinDivider,
            HeaderButtonSecton(
              buttonOne: IconTextButton(
                buttonIcon: Icons.video_call,
                buttonText: "Live",
                buttonAction: () {
                  print("Go live");
                },
                iconColor: Colors.red,
              ),
              buttonTwo: IconTextButton(
                buttonIcon: Icons.photo_library,
                buttonText: "Photo",
                buttonAction: () {
                  print("Take photos");
                },
                iconColor: Colors.green,
              ),
              buttonThree: IconTextButton(
                buttonIcon: Icons.video_call,
                buttonText: "Room",
                buttonAction: () {
                  print("Go Room");
                },
                iconColor: Colors.purple,
              ),
            ),
            thickDivider,
            RoomSection(),
            thickDivider,
            StorySection(),
            thickDivider,
            PostCard(
              profileImagePost: faisal,
              profileNamePost: 'Faisal',
              timeAtPost: '5h ago',
              isBlueTick: true,
              postImage: keyboard,
              postTitle: longTitle,
              likeCount: '15k',
              commentsCount: '3k',
              sharesCount: '20',
            ),
            thickDivider,
            PostCard(
              profileImagePost: faizu,
              profileNamePost: 'Faizu',
              timeAtPost: 'Yesterday',
              isBlueTick: true,
              postImage: dates,
              postTitle: 'Somthing Happy',
              likeCount: '12k',
              commentsCount: '1k',
              sharesCount: '23',
            ),
            thickDivider,
            SuggestionSection(),
            thickDivider,
            PostCard(
              profileImagePost: kpm,
              profileNamePost: 'Kpm',
              timeAtPost: 'Nov 10',
              isBlueTick: false,
              postImage: book,
              postTitle: longTitle,
              likeCount: '16k',
              commentsCount: '4k',
              sharesCount: '29',
            ),
            thickDivider,
          ],
        ),
      ),
    );
  }
}
