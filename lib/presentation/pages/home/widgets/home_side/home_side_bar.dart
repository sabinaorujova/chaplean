import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/constants/app_paddings.dart';
import '../../../../../utils/constants/assets_paths.dart';
import 'comment_bottom_sheet.dart';
import 'home_side_item.dart';
import 'pause_box.dart';
import 'share_bottom_sheet.dart';

class HomeSideBar extends StatelessWidget {
  const HomeSideBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle style = Theme.of(context)
        .textTheme
        .bodySmall!
        .copyWith(fontSize: 13, color: Colors.white);
    return Padding(
      padding: AppPaddings.all16,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SideBarItem(iconName: AssetsPaths.like, label: '13K', style: style),
            16.verticalSpace,
            GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return const CommentBottomSheet();
                      });
                },
                child:
                    SideBarItem(iconName: AssetsPaths.comment, style: style)),
            16.verticalSpace,
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  backgroundColor: Colors.transparent,
                  builder: (BuildContext context) {
                    return const ShareBottomSheet();
                  },
                );
              },
              child: SideBarItem(iconName: AssetsPaths.share, style: style),
            ),
            16.verticalSpace,
            const IconBox(
              icon: Icons.pause,
            )
          ]),
    );
  }
}
