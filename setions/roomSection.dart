import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: ListView(
        padding: EdgeInsets.only(
          left: 7,
          top: 2,
          bottom: 2,
          right: 7,
        ),
        scrollDirection: Axis.horizontal,
        children: [
          CreateRoomButton(),
          Avatar(
            displayImage: faisal,
            isStatusIndicator: true,
            imageBorder: false,
          ),
          Avatar(
            displayImage: faizu,
            isStatusIndicator: true,
            imageBorder: false,
          ),
          Avatar(
            displayImage: kpm,
            isStatusIndicator: true,
            imageBorder: false,
          ),
          Avatar(
            displayImage: rajesh,
            isStatusIndicator: true,
            imageBorder: false,
          ),
          Avatar(
            displayImage: ElectricTeh,
            isStatusIndicator: true,
            imageBorder: false,
          ),
          Avatar(
            displayImage: keyboard,
            isStatusIndicator: true,
            imageBorder: false,
          ),
          Avatar(
            displayImage: dates,
            isStatusIndicator: true,
            imageBorder: false,
          ),
          Avatar(
            displayImage: burgekhaleefa,
            isStatusIndicator: true,
            imageBorder: false,
          ),
          Avatar(
            displayImage: bullet,
            isStatusIndicator: true,
            imageBorder: false,
          ),
          Avatar(
            displayImage: book,
            isStatusIndicator: true,
            imageBorder: false,
          ),
        ],
      ),
    );
  }

  Widget CreateRoomButton() {
    return Container(
      padding: EdgeInsets.only(right: 4),
      child: OutlinedButton.icon(
        style: OutlinedButton.styleFrom(
          shape: StadiumBorder(),
          side: BorderSide(
            color: Colors.lightBlueAccent,
            width: 0.5,
          ),
        ),
        onPressed: () {
          print("Create a chat room");
        },
        icon: Icon(
          Icons.video_call,
          color: Colors.purple,
        ),
        label: Text(
          "Create\n Room",
          style: TextStyle(
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
