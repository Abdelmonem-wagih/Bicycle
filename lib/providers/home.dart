import 'package:flutter/foundation.dart';

class Home with ChangeNotifier {
  final String id;
  final String text;
  final int countFavorite;
  final int countShare;
  final int countComment;
  final String imageUrl;

  Home({
    this.id,
    this.text,
    this.countFavorite,
    this.countShare,
    this.countComment,
    this.imageUrl,
  });
}
