import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/constants/app_colors.dart';
import '../../../../widgets/global_input.dart';
import 'bottom_sheet_box.dart';
import 'copy_link_share_box.dart';
import 'grid_profil_item.dart';
import 'music_downland_box.dart';

class ShareBottomSheet extends StatelessWidget {
  const ShareBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomSheetBox(
      children: [
        Padding(
          padding: EdgeInsets.all(16.w),
          child: const GlobalInput(
            prefixIcon: Icon(Icons.search_rounded),
            hintText: 'Search',
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: GridView.count(
              crossAxisCount: 4,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: List.generate(16, (index) {
                return const GridProfilItem();
              }),
            ),
          ),
        ),
        4.verticalSpace,
        const Divider(
          color: AppColors.royalty,
        ),
        SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CopyLinkShareBox(),
              SizedBox(width: 16.w),
              const MusicDownlandBox(),
            ],
          ),
        ),
      ],
    );
  }
}
