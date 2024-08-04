import '../../../widgets/bottom_sheet_rounded.dart';
import 'package:flutter/material.dart';
import '../../../../utils/constants/assets_paths.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_strings.dart';
import '../../../../utils/constants/app_text_styles.dart';

class PlaylistContentDetailsBottomSheet {
  PlaylistContentDetailsBottomSheet._();
  static playlistSheet(BuildContext ctx) {
    showModalBottomSheet(
        useSafeArea: true,
        context: ctx,
        builder: (context) {
          return BottomSheetRounded(height:368.h ,children:[
          
          Column(
            children: [
              Text(
                AppStrings.contentDetails,
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
                    Icons.turned_in_not,
                    color: AppColors.etherealWhite,
                  ),
                  8.horizontalSpace,
                  Text(
                    AppStrings.saveOtherPlaylist,
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
                    AppStrings.deleteFromplaylist,
                    style: AppTextStyles.red16,
                  ),
                ],
              ),
            ],
          )]);
        });
  }
}
