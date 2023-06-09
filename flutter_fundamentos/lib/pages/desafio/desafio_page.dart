import 'package:flutter/material.dart';
import 'package:flutter_fundamentos/pages/desafio/widgets/image_avatar_default.dart';
import 'package:flutter_fundamentos/pages/desafio/widgets/image_avatar_live.dart';
import 'package:flutter_fundamentos/pages/desafio/widgets/post_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'widgets/image_avatar_perfil.dart';
import 'widgets/insta_app_bar.dart';
import 'widgets/insta_bottom_bar.dart';
import 'widgets/story_view.dart';

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
    return SingleChildScrollView(
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: StoryView(),
          ),
          PostView(),
          PostView(),
          PostView(),
          PostView(),
        ],
      ),
    );
  }
}
