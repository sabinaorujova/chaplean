import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../core/routes/generator.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/assets_paths.dart';
import '../../search/search_page.dart';

class HomeAppbar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.primaryColor,
      automaticallyImplyLeading: false, 
      title: SvgPicture.asset(AssetsPaths.chapleantext, height: 24.h),
      actions: [
        IconButton(
          icon: SvgPicture.asset(AssetsPaths.searchBtn),
          onPressed: () {
            Navigate.to(context, const SearchPage());
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
