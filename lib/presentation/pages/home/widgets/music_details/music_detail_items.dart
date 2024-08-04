import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../../data/models/feed_model.dart';
import '../../../../../utils/constants/app_paddings.dart';
import '../../../../../utils/constants/assets_paths.dart';
import '../home_side/save_bottom_sheet.dart';
import 'hastags_text_boxes.dart';
import 'music_names.dart';
import 'music_slader.dart';
import 'singer_name.dart';

class MusicDetailItems extends StatelessWidget {
  const MusicDetailItems({
    super.key,
    FeedModel? musicdetail,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.all10,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const HastagsTextBoxes(),
            8.verticalSpace,
            const MusicName(),
            4.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SingerName(),
                GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (builder) {
                          return const SaveBottomSheet();
                        },
                      );
                    },
                    child: SvgPicture.asset(AssetsPaths.save))
              ],
            ),
            2.verticalSpace,
            const MusicSlader()
          ]),
    );
  }
}
