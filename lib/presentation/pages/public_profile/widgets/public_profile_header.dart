import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../widgets/global_divider.dart';
import 'public_profile_list_tile.dart';

class PublicProfileHeader extends StatelessWidget {
  const PublicProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: false,
      floating: false,
      expandedHeight: 130.h,
      scrolledUnderElevation: 0,
      flexibleSpace: const FlexibleSpaceBar(
        centerTitle: true,
        background: ColoredBox(
          color: AppColors.primaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PublicProfileListTile(),
              GlobalDivider(),
            ],
          ),
        ),
      ),
    );
  }
}
