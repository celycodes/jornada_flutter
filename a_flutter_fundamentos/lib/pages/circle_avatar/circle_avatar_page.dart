// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CircleAvatarPage extends StatelessWidget {
  const CircleAvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circle Avatar'),
      ),
      body: const Row(
        children: [
          // Container(
          //   width: 100,
          //   height: 100,
          //   child: CircleAvatar(
          //     backgroundImage: NetworkImage(
          //         'https://pbs.twimg.com/media/FSgl1OfUcAEsiQV.jpg'),
          //   ),
          // ),
          Padding(
            padding: EdgeInsets.only(top: 10, right: 5, left: 10),
            child: ImageAvatar(
                urlImage: 'https://pbs.twimg.com/media/FSgl1OfUcAEsiQV.jpg'),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 5),
            child: ImageAvatar(
                urlImage:
                    'https://pbs.twimg.com/media/FKNlhKZUcAEd7FY?format=jpg'),
          ),
        ],
      ),
    );
  }
}

class ImageAvatar extends StatelessWidget {
  final String urlImage;
  const ImageAvatar({
    Key? key,
    required this.urlImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomRight,
                colors: [
                  Colors.purple,
                  Colors.pink,
                  Colors.orange,
                ],
              ),
              borderRadius: BorderRadius.circular(100)),
        ),
        SizedBox(
          width: 100,
          height: 100,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: CircleAvatar(backgroundImage: NetworkImage(urlImage)),
          ),
        ),
        SizedBox(
          width: 100,
          height: 100,
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
                    Colors.orange,
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
    );
  }
}
