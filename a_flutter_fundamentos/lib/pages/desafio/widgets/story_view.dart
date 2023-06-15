import 'package:flutter/material.dart';

import 'image_avatar_default.dart';
import 'image_avatar_live.dart';
import 'image_avatar_perfil.dart';

class StoryView extends StatelessWidget {
  const StoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 8.0, right: 4),
          child: ImageAvatarPerfil(
            urlImage:
                'https://res.cloudinary.com/practicaldev/image/fetch/s--ldmNQ-i---/c_fill,f_auto,fl_progressive,h_320,q_auto,w_320/https://dev-to-uploads.s3.amazonaws.com/uploads/user/profile_image/543418/c37fbfe3-f03d-4b78-b980-ad81604dea02.png',
            userName: 'Seu story',
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 4.0, right: 4.0),
          child: ImageAvatarLive(
            urlImage:
                'https://media.licdn.com/dms/image/C510BAQGNpdqV6sR5oQ/company-logo_200_200/0/1553940981522?e=1687392000&v=beta&t=cUOZs_7WUOWyA4rllPQOyiuOla4lKBl_pK03UScPbIQ',
            userName: 'gdgparnaiba',
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 4.0, right: 4.0),
          child: ImageAvatarDefault(
            urlImage:
                'https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png',
            userName: 'flutterdevs',
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 4.0, right: 4.0),
          child: ImageAvatarDefault(
            urlImage:
                'https://play-lh.googleusercontent.com/v_MRGqZPOyQ5ir-ESf3QE3lBkvib9dYflfgoMsjmyf-yT8foFGPCNNtecJwevwLxBhA',
            userName: 'dartlang',
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 4.0, right: 4.0),
          child: ImageAvatarDefault(
            urlImage: 'https://avatars.githubusercontent.com/celenny',
            userName: 'celenny',
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 4.0, right: 4.0),
          child: ImageAvatarDefault(
            urlImage:
                'https://image.kpopmap.com/2019/01/ITZY-RyuJin-070522.jpg',
            userName: 'ryujin',
          ),
        ),
      ],
    );
  }
}
