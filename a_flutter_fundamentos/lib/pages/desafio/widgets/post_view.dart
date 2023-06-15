import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostView extends StatelessWidget {
  final String urlImage;
  final String urlImagePost;
  final String userName;
  const PostView({super.key, required this.urlImage, required this.userName, required this.urlImagePost});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15, top: 7.0),
      child: Column(children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0, top: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(urlImage),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    userName,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 19),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(right: 10.0),
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
          decoration:  BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                urlImagePost,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10.0),
        const Padding(
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
                  FaIcon(FontAwesomeIcons.paperPlane, color: Colors.white),
                ],
              ),
              Padding(
                  padding: EdgeInsets.only(right: 8),
                  child:
                      FaIcon(FontAwesomeIcons.bookmark, color: Colors.white)),
            ],
          ),
        ),
      ]),
    );
  }
}
