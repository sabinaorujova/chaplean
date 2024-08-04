import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_strings.dart';
import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/constants/assets_paths.dart';

class PlaylistDetailsBottomSheet extends StatelessWidget {
  const PlaylistDetailsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppStrings.playlistDetails,
          style: AppTextStyles.whiteBlueS16W600,
        ),
        24.verticalSpace,
        Row(
          children: [
            SvgPicture.asset(AssetsPaths.infoIcon),
            8.horizontalSpace,
            Text(
              AppStrings.playlistInfo,
              style: AppTextStyles.whiteS16W400,
            )
          ],
        ),
        32.verticalSpace,
        Row(
          children: [
            SvgPicture.asset(AssetsPaths.infoIcon),
            8.horizontalSpace,
            Text(
              AppStrings.renamePlaylist,
              style: AppTextStyles.whiteS16W400,
            ),
          ],
        ),
        32.verticalSpace,
        Row(
          children: [
            const Icon(
              Icons.favorite_border,
              color: AppColors.etherealWhite,
            ),
            8.horizontalSpace,
            Text(
              AppStrings.likeThisPlaylist,
              style: AppTextStyles.whiteS16W400,
            ),
          ],
        ),
        32.verticalSpace,
        Row(
          children: [
            const Icon(
              Icons.download,
              color: AppColors.etherealWhite,
            ),
            8.horizontalSpace,
            Text(
              AppStrings.downlandPlaylist,
              style: AppTextStyles.whiteS16W400,
            ),
          ],
        ),
        32.verticalSpace,
        Row(
          children: [
            const Icon(
              Icons.share,
              color: AppColors.etherealWhite,
            ),
            8.horizontalSpace,
            Text(
              AppStrings.share,
              style: AppTextStyles.whiteS16W400,
            ),
          ],
        ),
        32.verticalSpace,
        Row(
          children: [
            const Icon(
              Icons.delete,
              color: AppColors.red,
            ),
            8.horizontalSpace,
            Text(
              AppStrings.deletPlaylist,
              style: AppTextStyles.red16,
            ),
          ],
        ),
      ],
    );
  }
}
