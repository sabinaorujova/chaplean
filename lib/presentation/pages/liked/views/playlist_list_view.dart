import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../data/models/playlist_model.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../widgets/custom_list_tile.dart';

class PlaylistListView extends StatelessWidget {
  const PlaylistListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: AppPaddings.tlr24b16,
      shrinkWrap: true,
      itemCount: playlistModel.length,
      scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => 16.verticalSpace,
      itemBuilder: (context, index) {
        final playlist = playlistModel[index];
        return CustomListTile(
          image: playlist.image,
          title: playlist.title,
          subtitle: playlist.subtitle,
        );
      },
    );
  }
}
