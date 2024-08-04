import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../utils/constants/app_strings.dart';
import 'hashtag_texts_box.dart';

class HastagsTextBoxes extends StatelessWidget {
  const HastagsTextBoxes({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const HashtagTextsBox(text: AppStrings.diamonds),
        10.horizontalSpace,
        const HashtagTextsBox(text: AppStrings.trend),
      ],
    );
  }
}
