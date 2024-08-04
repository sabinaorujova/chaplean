import 'package:chaplean/data/models/profile_playlist_model.dart';
import 'package:chaplean/presentation/pages/playlist_content/widgets/playlist_content_details_bottom_sheet.dart';
import 'package:chaplean/presentation/pages/profile/widgets/profile_bottom_sheet.dart';
import 'package:chaplean/presentation/widgets/custom_list_tile.dart';
import 'package:chaplean/utils/constants/app_paddings.dart';
import 'package:chaplean/utils/constants/assets_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

class PublicProfilePlaylistListView extends StatelessWidget {
  const PublicProfilePlaylistListView({
    super.key,
    this.profileBottomSheet = false,
  });

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
