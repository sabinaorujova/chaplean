import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppColorFilters {
  AppColorFilters._();

  static ColorFilter get doverGreySrcIn {
    return const ColorFilter.mode(AppColors.doverGrey, BlendMode.srcIn);
  }
}
