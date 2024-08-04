import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../../../utils/constants/app_text_styles.dart';
import '../../../../utils/constants/assets_paths.dart';

class PlayListSaveLike extends StatelessWidget {

  const PlayListSaveLike({ super.key });

   @override
   Widget build(BuildContext context) {
       return Row(
                children: [
                  SvgPicture.asset(AssetsPaths.like),
                  4.horizontalSpace,
                  Text('101',style:AppTextStyles.etheralWhite8 ,),
                  16.horizontalSpace,
                  SvgPicture.asset(AssetsPaths.save),
                  4.horizontalSpace,
                  Text('101',style:AppTextStyles.etheralWhite8 ,)
                ],
       );
  }
}