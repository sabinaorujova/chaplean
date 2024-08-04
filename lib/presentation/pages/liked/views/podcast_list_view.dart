import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../data/models/podcast_model.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../widgets/custom_list_tile.dart';

class PodcastListView extends StatelessWidget {
  const PodcastListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: AppPaddings.tlr24b16,
      shrinkWrap: true,
      itemCount: podcastListModel.length,
      scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => 16.verticalSpace,
      itemBuilder: (context, index) {
        final podcastList = podcastListModel[index];
        return CustomListTile(
          image: podcastList.image,
          title: podcastList.title,
          subtitle: podcastList.subtitle,
        );
      },
    );
  }
}
