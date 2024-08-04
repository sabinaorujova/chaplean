import 'package:flutter/material.dart';

import '../../../../../utils/constants/app_colors.dart';
import '../../../../../utils/constants/app_text_styles.dart';

class HashtagTextsBox extends StatelessWidget {
  const HashtagTextsBox({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: AppColors.primaryColor,
          border: Border.all(color: AppColors.karimunBlue, width: 0.5),
        ),
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Center(
              child: Text(text,
                style: AppTextStyles.appBarTitle13,
              ),
            )));
  }
}
