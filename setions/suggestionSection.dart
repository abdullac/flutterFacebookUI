import 'package:facebook/assets.dart';
import 'package:facebook/widgets/suggestionCard.dart';
import 'package:flutter/material.dart';

class SuggestionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Column(
        children: [
          ListTile(
            title: Text('People You May Know'),
            trailing: IconButton(
              color: Colors.grey,
              icon: Icon(Icons.more_horiz),
              onPressed: () {
                print('more sugestion pressed');
              },
            ),
          ),
          Container(
            height: 243,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SuggestionCard(
                  MutualCount: '6',
                  suggestAvatarImage: abdulla,
                  suggestName: 'Abdulla',
                ),
                SuggestionCard(
                  MutualCount: '8',
                  suggestAvatarImage: faisal,
                  suggestName: 'Faisal',
                ),
                SuggestionCard(
                  MutualCount: '3',
                  suggestAvatarImage: faizu,
                  suggestName: 'Faizu',
                ),
                SuggestionCard(
                  MutualCount: '1',
                  suggestAvatarImage: kpm,
                  suggestName: 'Kpm',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
