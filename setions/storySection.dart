import 'package:facebook/assets.dart';
import 'package:facebook/widgets/storyCard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            avatarImage: abdulla,
            labelText: 'Add to Story',
            storyImage: abdulla,
            isStatusIndiatorStory: true,
          ),
          StoryCard(
            avatarImage: faisal,
            labelText: 'Faisal',
            storyImage: burgekhaleefa,
            //isStatusIndiatorStory: false,
          ),
          StoryCard(
            avatarImage: faizu,
            labelText: 'Faizu',
            storyImage: bullet,
            //isStatusIndiatorStory: false,
          ),
          StoryCard(
            avatarImage: abdulla,
            labelText: 'Abdulla',
            storyImage: ElectricTeh,
            //isStatusIndiatorStory: false,
          ),
          StoryCard(
            avatarImage: kpm,
            labelText: 'Kpm',
            storyImage: rajesh,
            //isStatusIndiatorStory: false,
          ),
          StoryCard(
            avatarImage: bullet,
            labelText: 'Rajesh',
            storyImage: dates,
            //isStatusIndiatorStory: false,
          ),
        ],
      ),
    );
  }
}
