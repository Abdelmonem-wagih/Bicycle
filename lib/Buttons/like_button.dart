import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class LikeBotton extends StatelessWidget {
  final int counter;

  LikeBotton(this.counter);

  @override
  Widget build(BuildContext context) {
    return LikeButton(
      size: 30,
      likeBuilder: (bool isLiked) {
        return Icon(
          isLiked ? Icons.favorite : Icons.favorite_border,
          color: isLiked ? Colors.red : Colors.grey,
          size: 30,
        );
      },
      likeCount: counter,
      countPostion: CountPostion.right,
      countBuilder: (int count, bool isLiked, String text) {
        var color = isLiked ? Color.fromRGBO(33, 150, 243, 1) : Colors.grey;
        Widget result;
        if (count == 0) {
          result = Text(
            "Love",
            style: TextStyle(color: color),
          );
        } else
          result = Text(
            text,
            style: TextStyle(color: color),
          );
        return result;
      },
    );
  }
}
