import 'package:Project/screen/comment_screen.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CommentButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LikeButton(
      size: 30,
      likeBuilder: (bool isLiked) {
        return Icon(
          FontAwesomeIcons.comment,
          color: Colors.grey,
          size: 27,
        );
      },
      onTap: (_) => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => CommentScreen(),
        ),
      ),
      likeCount: 0,

      countPostion: CountPostion.right,
      // countBuilder: (int count, bool isLiked, String text) {
      //   var color = isLiked ? Color.fromRGBO(33, 150, 243, 1) : Colors.grey;
      //   Widget result;
      //   if (count == 0) {
      //     result = Text(
      //       "Love",
      //       style: TextStyle(color: color),
      //     );
      //   } else
      //     result = Text(
      //       text,
      //       style: TextStyle(color: color),
      //     );
      //   return result;
      // },
    );
  }
}
