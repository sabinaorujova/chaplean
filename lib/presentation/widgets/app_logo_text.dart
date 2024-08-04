import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg.dart';

import '../../utils/constants/assets_paths.dart';

class AppLogoText extends StatelessWidget {
  const AppLogoText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(AssetsPaths.chapleanHat),
        SizedBox(
          width: 221.w,
          child: SvgPicture.asset(AssetsPaths.chapleantext),
        ),
      ],
    );
  }
}
