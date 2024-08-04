import 'package:flutter/material.dart';

import '../../../../../data/models/feed_model.dart';
import '../home_side/home_side_bar.dart';
import '../music_details/music_detail_items.dart';
import '../music_svg.dart';

class HomeMusicLayout extends StatelessWidget {
  final FeedModel? musicdetail;

  const HomeMusicLayout({Key? key,  this.musicdetail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff2f3f63),
                Color.fromRGBO(26,26,26,1),
              ],
            ),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              flex: 3,
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 4,
                child: MusicDetailItems(musicdetail: musicdetail,),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 2.9,
                child: const HomeSideBar(),
              ),
            ),
          ],
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.1,
          child: const MusicSvg(),
        )
      ],
    );
  }
}