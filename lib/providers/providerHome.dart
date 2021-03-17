import 'package:Project/providers/home.dart';
import 'package:flutter/material.dart';

class ProviderHome with ChangeNotifier {
  List<Home> _items = [
    Home(
      id: "news1",
      text:
          "Emma Coronel Aispuro, 31, was apprehended at Dulles International Airport and is facing charges of conspiracy to distribute one kilogram or more of heroin,",
      countFavorite: 0,
      countShare: 0,
      countComment: 0,
      imageUrl: "assets/screen1.jpg",
    ),
    Home(
      id: "news2",
      text:
          "According to a criminal complaint, there is probable cause to believe that, from at least in or about 2014 and at least on or about January 19, 2017, Coronel did knowingly, intentionally, and willfully conspired with Guzmán and others to distribute drugs.",
      countFavorite: 0,
      countShare: 0,
      countComment: 0,
      imageUrl: "assets/screen2.jpg",
    ),
    Home(
      id: "news3",
      text:
          "The complaint says the FBI believes she took messages from Guzmán to his lieutenants, associates and four sons before and while El Chapo was in a Mexican prison.",
      countFavorite: 0,
      countShare: 0,
      countComment: 0,
      imageUrl: "assets/screen3.jpg",
    ),
    Home(
      id: "news4",
      text:
          "five kilograms or more of cocaine, 1,000 kilograms or more of marijuana and 500 grams or more of methamphetamines for unlawful importation into the country, according to a news release from the Justice Department.",
      countFavorite: 0,
      countShare: 0,
      countComment: 0,
      imageUrl: "assets/profile.png",
    ),
  ];
  List<Home> get items {
    return [..._items];
  }
}
