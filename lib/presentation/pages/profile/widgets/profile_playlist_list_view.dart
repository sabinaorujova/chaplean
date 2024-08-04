import '../../playlist_content/widgets/playlist_content_details_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../data/models/profile_playlist_model.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/assets_paths.dart';
import '../../../widgets/custom_list_tile.dart';
import 'profile_bottom_sheet.dart';

class ProfilePlaylistListView extends StatelessWidget {
  const ProfilePlaylistListView({
    Key? key,
    this.profileBottomSheet = false,
  }) : super(key: key);

  final bool profileBottomSheet;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: AppPaddings.t24lr16b16,
      shrinkWrap: true,
      itemCount: profilePlaylist.length,
      scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => 16.verticalSpace,
      itemBuilder: (context, index) {
        final playlist = profilePlaylist[index];
        return CustomListTile(
          image: playlist.image,
          title: playlist.title,
          subtitle: playlist.subtitle,
          hasTrailing: true,
          trailing: GestureDetector(
            onTap: () {
              if (profileBottomSheet == true) {
                ProfileBottomSheet.profileSheet(context);
              } else {
                PlaylistContentDetailsBottomSheet.playlistSheet(context);
              }
            },
            child: SvgPicture.asset(AssetsPaths.verticalDots),
          ),
        );
      },
    );
  }
}
