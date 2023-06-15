import 'package:flutter/material.dart';

class ImageAvatarDefault extends StatelessWidget {
  final String urlImage;
  final String userName;

  const ImageAvatarDefault({
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
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.purple,
                      Colors.pink,
                      Colors.amber,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(100)),
            ),
            SizedBox(
              width: 80,
              height: 80,
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(urlImage),
                  backgroundColor: Colors.white,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          userName,
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
