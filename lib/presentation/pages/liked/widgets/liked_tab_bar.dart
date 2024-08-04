import 'package:flutter/material.dart';

import '../views/music_list_view.dart';
import '../views/playlist_list_view.dart';
import '../views/podcast_list_view.dart';

class LikedTabBar extends StatelessWidget {
  const LikedTabBar({super.key, this.controller});

  final TabController? controller;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: controller,
      children: const [
        SingleChildScrollView(
          child: MusicListView(),
        ),
        SingleChildScrollView(
          child: PlaylistListView(),
        ),
        SingleChildScrollView(
          child: PodcastListView(),
        ),
      ],
    );
  }
}
