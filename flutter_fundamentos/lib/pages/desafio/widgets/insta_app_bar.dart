import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

PreferredSizeWidget instaAppBar() {
  return AppBar(
    backgroundColor: Colors.black,
    elevation: 0.0,
    title: const SizedBox(
      height: 37.0,
      child: Image(
          image: NetworkImage(
              'https://www.seekpng.com/png/full/813-8136306_trend-new-instagram-logo-2019-png-edigital-instagram.png')),
    ),
    actions: const <Widget>[
      Row(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: FaIcon(
              FontAwesomeIcons.heart,
              size: 25,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 15.0, left: 8.0),
            child: FaIcon(
              FontAwesomeIcons.paperPlane,
              size: 25,
            ),
          ),
          SizedBox(width: 8.0),
        ],
      ),
    ],
  );
}
