import 'package:flutter/material.dart';

import '../../../data/models/feed_model.dart';
import '../../widgets/custom_nav_bar.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_page_details/home_music_layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeAppbar(),
      body: PageView.builder(
        onPageChanged: (int page) => {},
        scrollDirection: Axis.vertical,
        itemCount: FeedModel.musicDetails.length,
        itemBuilder: (context, index) {
          final musicdetail = FeedModel.musicDetails[index];
          return HomeMusicLayout(musicdetail: musicdetail);
        },
      ),
       bottomNavigationBar:const BottomNavBar(),
    );
  }
}
