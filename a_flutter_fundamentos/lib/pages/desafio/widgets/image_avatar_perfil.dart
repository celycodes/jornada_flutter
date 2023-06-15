import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ImageAvatarPerfil extends StatelessWidget {
  final String urlImage;
  final String userName;

  const ImageAvatarPerfil({
    Key? key,
    required this.urlImage,
    required this.userName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            SizedBox(
              width: 80,
              height: 80,
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: CircleAvatar(backgroundImage: NetworkImage(urlImage)),
              ),
            ),
            SizedBox(
              width: 80,
              height: 80,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: 22,
                  width: 22,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const Center(
                    child: FaIcon(
                      FontAwesomeIcons.plus,
                      color: Colors.white,
                      size: 12,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          userName,
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
