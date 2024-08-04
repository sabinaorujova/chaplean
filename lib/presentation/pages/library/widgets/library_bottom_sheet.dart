import '../../../../utils/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/constants/app_colors.dart';
import '../../../../utils/constants/app_paddings.dart';

class LibraryBottomSheet {
   LibraryBottomSheet._();
  static  profileSheet(BuildContext ctx) {
    showModalBottomSheet(
        useSafeArea: true,
        context: ctx,
        builder: (context) {
          return Expanded(
              child: Container(
                  height: 256.h,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                    color: AppColors.secondaryBlue,
                  ),
                  width: double.infinity,
                  padding: AppPaddings.all24,
                  child: const Column(
                      children: [Text(AppStrings.choosePlatform)])));
        });
  }
}
