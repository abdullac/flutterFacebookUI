import 'package:facebook/assets.dart';
import 'package:facebook/setions/headerButtonSecton.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:facebook/widgets/blueTick.dart';
import 'package:facebook/widgets/iconTextButton.dart';
import 'package:flutter/material.dart';

enum CommentOrShare { comment, share }

class PostCard extends StatelessWidget {
  final String profileImagePost;
  final String profileNamePost;
  final String timeAtPost;
  final bool isBlueTick;
  final String postTitle;
  final String postImage;
  final String likeCount;
  final String commentsCount;
  final String sharesCount;

  /*const*/ PostCard({
    required this.profileImagePost,
    required this.profileNamePost,
    required this.timeAtPost,
    this.isBlueTick = false,
    required this.postTitle,
    required this.postImage,
    required this.likeCount,
    this.commentsCount = '0',
    this.sharesCount = '0',
  });

  var cmt = CommentOrShare.comment;
  var shr = CommentOrShare.share;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postCardHeader(),
          postCardTitle(),
          postCardImage(context),
          postCardFooter(),
          Divider(color: Colors.grey[400], thickness: 0.5),
          HeaderButtonSecton(
            buttonOne: IconTextButton(
                buttonIcon: Icons.thumb_up_alt_outlined,
                buttonText: 'Like',
                buttonAction: () {
                  print('You liked this post');
                },
                iconColor: Colors.grey),
            buttonTwo: IconTextButton(
                buttonIcon: Icons.message_outlined,
                buttonText: 'Comment',
                buttonAction: () {
                  print('Comment here');
                },
                iconColor: Colors.grey),
            buttonThree: IconTextButton(
                buttonIcon: Icons.share_outlined,
                buttonText: 'Share',
                buttonAction: () {
                  print('Share this post');
                },
                iconColor: Colors.grey),
          ),
        ],
      ),
    );
  }

  Widget postCardHeader() {
    return ListTile(
      leading: Avatar(displayImage: profileImagePost, isStatusIndicator: false),
      title: Row(
        children: [
          Text(
            profileNamePost,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 6),
          isBlueTick ? BlueTick() : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(timeAtPost != null ? timeAtPost : ''),
          SizedBox(width: 7),
          Icon(
            Icons.public,
            size: 14,
            color: Colors.grey[600],
          )
        ],
      ),
      trailing: IconButton(
        onPressed: () {
          print("More options");
        },
        icon: Icon(
          Icons.more_horiz,
          color: Colors.grey[600],
        ),
      ),
    );
  }

  Widget postCardTitle() {
    return postTitle != null && postTitle != ''
        ? Container(
            padding: EdgeInsets.only(bottom: 2, left: 8, right: 8),
            child: Text(
              postTitle != null ? postTitle : '',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
          )
        : SizedBox();
  }

  Widget postCardImage(context) {
    return Container(
      padding: EdgeInsets.only(top: 3, bottom: 3),
      //height: 200,
      width: MediaQuery.of(context).size.width,
      child: Image.asset(
        postImage,
        fit: BoxFit.contain,
      ),
    );
  }

  Widget postCardFooter() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconTextButton(
            buttonIcon: Icons.thumb_up,
            buttonText: likeCount,
            buttonAction: () {
              print('liked');
            },
            iconColor: Colors.white,
            textColour: Colors.grey,
            iconContainerColor: Colors.blue,
            iconSize: 12,
          ),
          Container(
            child: Row(
              children: [
                textFooter(cmt),
                SizedBox(width: 8),
                textFooter(shr),
                Avatar(
                  displayImage: profileImagePost,
                  isStatusIndicator: false,
                  avatarSize: 18,
                ),
                IconButton(
                  onPressed: () {
                    print("drop down pressed");
                  },
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget textFooter(cmtShr) {
    return Text(
      "${cmtShr == CommentOrShare.comment ? '${commentsCount} Comments' : '${sharesCount} Shares'}",
      style: TextStyle(color: Colors.grey),
    );
  }
}
