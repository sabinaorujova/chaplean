import 'choose_platform_bottom_sheet.dart';
import '../../../widgets/bottom_sheet_rounded.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../widgets/global_button.dart';

class CreatePlaylistBottomSheet extends StatelessWidget {
  const CreatePlaylistBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        'Create Playlist',
        style: AppTextStyles.etheralWhite16,
      ),
      16.verticalSpace,
      GlobalButton(
        onTap: () {},
        title: 'Playlist name',
        style: AppTextStyles.smalStyle16,
        color: AppColors.primarySwatch,
      ),
      16.verticalSpace,
      GlobalButton(
        onTap: () {},
        title: 'Create ',
        style: AppTextStyles.primary16,
        color: AppColors.karimunBlue,
      ),
      16.verticalSpace,
      GlobalButton(
        onTap: ()async {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return  const BottomSheetRounded(height: 300,children: [
                  ChoosePlatformBottomSheet()

              ]);
            },
          );
        },
        title: 'Convert Playlist',
        style: AppTextStyles.blue16,
        color: AppColors.secondaryBlue,
        borderside: Border.all(color: AppColors.karimunBlue),
      )
    ]);
  }
}
