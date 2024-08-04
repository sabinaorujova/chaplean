import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../data/models/music_model.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/assets_paths.dart';
import '../../../widgets/custom_list_tile.dart';

class MusicListView extends StatelessWidget {
  const MusicListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: AppPaddings.tlr24b16,
      shrinkWrap: true,
      itemCount: musicListModel.length,
      scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => 16.verticalSpace,
      itemBuilder: (context, index) {
        final musicList = musicListModel[index];
        return CustomListTile(
          trailing: SvgPicture.asset(AssetsPaths.verticalDots),
          image: musicList.image,
          title: musicList.title,
          subtitle: musicList.subtitle,
          hasTrailing: true,
        );
      },
    );
  }
}
