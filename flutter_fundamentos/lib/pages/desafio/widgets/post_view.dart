import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostView extends StatelessWidget {

  const PostView({ super.key });

   @override
   Widget build(BuildContext context) {
       return Container(
            margin: EdgeInsets.only(bottom: 15, top: 7.0),
            child: Column(children: [
              Padding(
                padding: EdgeInsets.only(
                    left: 10.0, right: 10.0, bottom: 10.0, top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage(
                              'https://res.cloudinary.com/practicaldev/image/fetch/s--ldmNQ-i---/c_fill,f_auto,fl_progressive,h_320,q_auto,w_320/https://dev-to-uploads.s3.amazonaws.com/uploads/user/profile_image/543418/c37fbfe3-f03d-4b78-b980-ad81604dea02.png'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'celycodes',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 19),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: FaIcon(
                        FontAwesomeIcons.ellipsisVertical,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 400,
                width: 500,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://procoders.tech/wp-content/uploads/2021/02/How-Much-Does-it-Really-Cost-to-Develop-a-Flutter-App-in-2021.png',
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        FaIcon(FontAwesomeIcons.heart, color: Colors.white),
                        SizedBox(
                          width: 10,
                        ),
                        FaIcon(FontAwesomeIcons.comment, color: Colors.white),
                        SizedBox(
                          width: 10,
                        ),
                        FaIcon(FontAwesomeIcons.paperPlane,
                            color: Colors.white),
                      ],
                    ),
                    Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: FaIcon(FontAwesomeIcons.bookmark,
                            color: Colors.white)),
                  ],
                ),
              ),
            ]),
          );
  }
}