import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget instBottomBar() {
    return Container(
      height: 60,
      color: Colors.black,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FaIcon(
            FontAwesomeIcons.house,
            color: Colors.white,
            size: 26,
          ),
          FaIcon(
            FontAwesomeIcons.magnifyingGlass,
            color: Colors.white,
            size: 25,
          ),
          FaIcon(
            FontAwesomeIcons.squarePlus,
            color: Colors.white,
            size: 25,
          ),
          FaIcon(
            FontAwesomeIcons.clapperboard,
            color: Colors.white,
            size: 25,
          ),
          CircleAvatar(
            radius: 17,
            backgroundImage: NetworkImage(
                'https://res.cloudinary.com/practicaldev/image/fetch/s--ldmNQ-i---/c_fill,f_auto,fl_progressive,h_320,q_auto,w_320/https://dev-to-uploads.s3.amazonaws.com/uploads/user/profile_image/543418/c37fbfe3-f03d-4b78-b980-ad81604dea02.png'),
          ),
        ],
      ),
    );
  }