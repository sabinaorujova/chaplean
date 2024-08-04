import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../../utils/constants/app_borders.dart';
import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_paddings.dart';
import '../../../../../utils/constants/app_text_styles.dart';
import '../../../../../utils/constants/assets_paths.dart';

class CommentTile extends StatelessWidget {
  const CommentTile({super.key, required this.username, required this.comment});

  final String username;
  final String comment;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.h12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Container(
              width: 24.r,
              height: 24.r,
              decoration: BoxDecoration(
                color: AppColors.etherealWhite,
                borderRadius: AppBorders.c4,
              ),
              child: ClipRRect(
                borderRadius: AppBorders.c4,
                child: Center(
                  child: SvgPicture.asset(
                    AssetsPaths.profileIconFilled,
                    height: 20.r,
                    width: 20.r,
                  ),
                ),
              ),
            ),
            title: Text(
              username,
              style: AppTextStyles.etheralWhite12,
            ),
          ),
          Text(
            comment,
            style: AppTextStyles.smalStyle10,
          ),
          const Divider(
            color: AppColors.karimunBlue,
          ),
        ],
      ),
    );
  }
}
