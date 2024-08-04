import 'package:flutter/material.dart';

import '../../../widgets/custom_tab.dart';
import '../../liked/views/music_list_view.dart';
import '../../liked/views/playlist_list_view.dart';
import '../../liked/views/podcast_list_view.dart';
import 'tags.dart';

class TabbarContent extends StatelessWidget {

  const TabbarContent({ super.key, required this.controller });
  final TabController controller;
   @override
   Widget build(BuildContext context) {
       return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TabBar(
          indicatorSize: TabBarIndicatorSize.tab,
          controller: controller,
          tabs: const [
            CustomTab.audio(),
            CustomTab.playlist(),
            CustomTab.account(),
            CustomTab.tag()
          ],
        ),
        Expanded(
          child: TabBarView(
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
              Tags(),
            ],
          ),
        ),
      ],
    );

  }
}