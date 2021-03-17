import 'package:Project/Buttons/comment_button.dart';
import 'package:Project/Buttons/like_button.dart';
import 'package:Project/Buttons/share_button.dart';
import 'package:flutter/material.dart';

const TextStyle textStyle = TextStyle(color: Colors.grey, fontSize: 15);

class PostItems extends StatelessWidget {
  final String id;
  final String text;
  final int countFavorite;
  final int countShare;
  final int countComment;
  final String imageUrl;

  PostItems(
    this.id,
    this.text,
    this.countFavorite,
    this.countShare,
    this.countComment,
    this.imageUrl,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 1, color: Colors.grey),
      ),
      child: GridTile(
        header: Padding(
          padding: const EdgeInsets.only(
            left: 10.0,
            top: 5,
          ),
          child: Row(
            //crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      imageUrl,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 5),
              Text(
                id,
                style: TextStyle(
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 70.0,
            left: 20,
          ),
          child: Text(
            text,

            //textAlign: TextAlign.start,
          ),
        ),
        footer: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                width: 1,
                color: Colors.grey,
              ),
            ),
            // borderRadius: BorderRadius.circular(20),
            // color: Colors.black,
          ),
          child: GridTileBar(
            leading: Row(
              children: [
                LikeBotton(countFavorite),
                SizedBox(width: 60),
                CommentButton(),
                SizedBox(width: 60),
                ShareButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
