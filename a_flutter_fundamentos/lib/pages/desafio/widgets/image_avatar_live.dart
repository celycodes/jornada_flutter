import 'package:flutter/material.dart';

class ImageAvatarLive extends StatelessWidget {
  final String urlImage;
  final String userName;
  const ImageAvatarLive({
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
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.purple,
                      Colors.pink,
                      Colors.red,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(100)),
            ),
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
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.purple,
                        Colors.pink,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(3),
                    color: Colors.deepPurple,
                  ),
                  child: const Text(
                    'AO VIVO',
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ),
              ),
            )
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
