import '../../widgets/custom_nav_bar.dart';
import 'package:flutter/material.dart';

import '../../widgets/search_appbar.dart';
import '../profile/widgets/profile_playlist_list_view.dart';
import 'widgets/playlist_functions.dart';

class PlaylistContentPage extends StatelessWidget {
  const PlaylistContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: SearchAppbar(
          onPressed: () {},
          showCustomBackButton: true,
        ),
        body: const Column(children: [
          PlaylistFunctions(),
          Divider(),
          ProfilePlaylistListView(
            profileBottomSheet: false,
          )
        ]),
        bottomNavigationBar: const BottomNavBar(),);
  }
}
