import 'package:flutter/material.dart';
import 'widgets/insta_app_bar.dart';
import 'widgets/insta_bottom_bar.dart';
import 'widgets/story_view.dart';
import 'widgets/post_view.dart';

class InstaHomePage extends StatelessWidget {
  const InstaHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: instaAppBar(),
      body: instaBody(),
      bottomNavigationBar: instBottomBar(),
    );
  }

  Widget instaBody() {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: StoryView(),
          ),
          PostView(
              urlImage:
                  'https://media.licdn.com/dms/image/C510BAQGNpdqV6sR5oQ/company-logo_200_200/0/1553940981522?e=1687392000&v=beta&t=cUOZs_7WUOWyA4rllPQOyiuOla4lKBl_pK03UScPbIQ',
              userName: 'gdgparnaiba',
              urlImagePost:
                  'https://ninelabs.blog/wp-content/uploads/2022/05/flutter-30.png'),
          PostView(
              urlImage:
                  'https://res.cloudinary.com/practicaldev/image/fetch/s--ldmNQ-i---/c_fill,f_auto,fl_progressive,h_320,q_auto,w_320/https://dev-to-uploads.s3.amazonaws.com/uploads/user/profile_image/543418/c37fbfe3-f03d-4b78-b980-ad81604dea02.png',
              userName: 'celycodes',
              urlImagePost:
                  'https://user-images.githubusercontent.com/70456452/154167100-871c60ac-6bd7-48bf-ac74-297e3e8b81c7.png'),
          PostView(
              urlImage:
                  'https://images.ctfassets.net/23aumh6u8s0i/4TsG2mTRrLFhlQ9G1m19sC/4c9f98d56165a0bdd71cbe7b9c2e2484/flutter',
              userName: 'flutter.dev',
              urlImagePost:
                  'https://www.howtogeek.com/wp-content/uploads/2022/05/Flutter-framework-featured.jpg?width=1198&trim=1,1&bg-color=000&pad=1,1'),
        ],
      ),
    );
  }
}
