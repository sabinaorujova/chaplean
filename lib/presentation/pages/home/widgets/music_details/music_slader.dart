
import 'package:flutter/material.dart';

import '../../../../../utils/constants/app_colors.dart';

class MusicSlader extends StatelessWidget {
  const MusicSlader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:double.infinity,

      child: Slider(
        value: 0.5,
        onChanged: (double value) {},
        min: 0,
        max: 1,
        activeColor: AppColors.karimunBlue,inactiveColor: AppColors.primaryColor,
      ),
    );
  }
}
