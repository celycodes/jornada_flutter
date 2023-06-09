import 'package:flutter/material.dart';

import 'image_avatar_default.dart';
import 'image_avatar_live.dart';
import 'image_avatar_perfil.dart';

class StoryView extends StatelessWidget {
  const StoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 4),
          child: ImageAvatarPerfil(
            urlImage:
                'https://res.cloudinary.com/practicaldev/image/fetch/s--ldmNQ-i---/c_fill,f_auto,fl_progressive,h_320,q_auto,w_320/https://dev-to-uploads.s3.amazonaws.com/uploads/user/profile_image/543418/c37fbfe3-f03d-4b78-b980-ad81604dea02.png',
            userName: 'Seu story',
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 4.0, right: 4.0),
          child: ImageAvatarLive(
            urlImage:
                'https://i.pinimg.com/736x/75/d0/0f/75d00f9d9e5d540b593145a93d1815bc.jpg',
            userName: 'hiyyih',
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 4.0, right: 4.0),
          child: ImageAvatarDefault(
            urlImage:
                'https://pbs.twimg.com/profile_images/1568802877933588482/Pnwh7rKm_400x400.jpg',
            userName: 'zendaya',
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 4.0, right: 4.0),
          child: ImageAvatarDefault(
            urlImage: 'https://avatars.githubusercontent.com/celenny',
            userName: 'celenny',
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 4.0, right: 4.0),
          child: ImageAvatarDefault(
            urlImage:
                'https://64.media.tumblr.com/d660201e5c57adb511c5d07142195221/2f821c3c6f4de8dc-6f/s540x810/ebaf39658bd08589a7ea03aa1f395c49a813503c.jpg',
            userName: 'xiaoting',
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 4.0, right: 4.0),
          child: ImageAvatarDefault(
            urlImage:
                'https://64.media.tumblr.com/d660201e5c57adb511c5d07142195221/2f821c3c6f4de8dc-6f/s540x810/ebaf39658bd08589a7ea03aa1f395c49a813503c.jpg',
            userName: 'xiaoting',
          ),
        ),
      ],
    );
  }
}
