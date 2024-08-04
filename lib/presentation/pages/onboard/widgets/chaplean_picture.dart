import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

import '../../../../utils/constants/assets_paths.dart';

class ChapleanPicture extends StatelessWidget {
  const ChapleanPicture({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 195.w,
        height: 276.h,
        child: SvgPicture.asset(AssetsPaths.chapleanLogo));
  }
}
