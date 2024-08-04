import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/assets_paths.dart';
import 'pause_downland_share_box.dart';
import 'play_list_music_details.dart';
import 'play_list_name.dart';
import 'play_list_save_like.dart';

class PlaylistFunctions extends StatelessWidget {
  const PlaylistFunctions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.all16,
      child: Row(
        children: [
          Image.asset(
            AssetsPaths.blueApple,
            width: 96.r,
            height: 96.r,
            fit: BoxFit.cover,
          ),
          12.horizontalSpace,
      const    Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                PlayListName(),
                SizedBox(height: 16),
                PlayListMusicDetails(),
                SizedBox(height: 16),
                PlayListSaveLike(),
              ],
            ),
          ),
        const  PauseDownlandShareBox(),
        ],
      ),
    );
  }
}
