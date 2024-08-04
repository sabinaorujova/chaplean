import 'package:flutter/material.dart';

import '../../../../data/models/feed_model.dart';
import 'home_page_details/home_music_layout.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      onPageChanged: (int page) => {},
      scrollDirection: Axis.vertical,
      itemCount: FeedModel.musicDetails.length,
      itemBuilder: (context, index) {
        final musicdetail = FeedModel.musicDetails[index];
        return HomeMusicLayout(musicdetail: musicdetail);
      },
    );
  }
}
